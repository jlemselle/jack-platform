import { SourceMap, Token } from "../tokenizer/token";
import { TokenType } from "../tokenizer/token-type";

export class InputSource {
  get nextToken() {
    return this.tokens[this.index];
  }

  constructor(private tokens: Token[], private index: number) {}

  consumeToken(): InputSource {
    return new InputSource(this.tokens, this.index + 1);
  }
}

export type ParseResult<T> =
  | {
      success: true;
      value: T;
      remaining: InputSource;
      sourceMap?: SourceMap;
    }
  | {
      success: false;
      error: string;
      sourceMap?: SourceMap;
    };

export type ParseFunc<T> = (input: InputSource) => ParseResult<T>;

export function success<T>(
  value: T,
  remaining: InputSource,
  sourceMap?: SourceMap
): ParseResult<T> {
  return {
    success: true,
    value,
    remaining,
    sourceMap,
  };
}

export function failure<T>(error: string): ParseResult<T> {
  return {
    success: false,
    error,
  };
}

export function number(): ParseFunc<string> {
  return tokenType("number");
}

export function keyword(keyword: string): ParseFunc<string> {
  return tokenValue("keyword", keyword);
}

export function keywords(keywords: string[]): ParseFunc<string> {
  return tokenValues("keyword", keywords);
}

export function symbol(symbol: string): ParseFunc<string> {
  return tokenValue("symbol", symbol);
}

export function symbols(symbols: string[]): ParseFunc<string> {
  return tokenValues("symbol", symbols);
}

export function identifier(): ParseFunc<string> {
  return tokenType("identifier");
}

export function string(): ParseFunc<string> {
  return map(tokenType("string"), (s) => {
    return s.substring(1, s.length - 1);
  });
}

export function tokenType(type: TokenType): ParseFunc<string> {
  return (input) => {
    const token = input.nextToken;
    if (!token) {
      return failure(`No more tokens`);
    }
    if (token.type === type) {
      return success(token.value, input.consumeToken(), token.sourceMap);
    } else {
      return failure(`Expected ${type}, but got ${token.type}`);
    }
  };
}

export function tokenValue(type: TokenType, value: string): ParseFunc<string> {
  return (input) => {
    const token = input.nextToken;
    if (!token) {
      return failure(`No more tokens`);
    }
    if (token.type === type && token.value === value) {
      return success(token.value, input.consumeToken(), token.sourceMap);
    } else {
      return failure(
        `Expected ${type} of ${value}, but got ${token.type} of ${token.value}`
      );
    }
  };
}

export function tokenValues(
  type: TokenType,
  values: string[]
): ParseFunc<string> {
  return (input) => {
    const token = input.nextToken;
    if (!token) {
      return failure(`No more tokens`);
    }
    if (token.type === type && values.includes(token.value)) {
      return success(token.value, input.consumeToken(), token.sourceMap);
    } else {
      return failure(
        `Expected ${type} of ${values.join(" or ")}, but got ${token.type} of ${
          token.value
        }`
      );
    }
  };
}

export function map<A, B>(
  p: ParseFunc<A>,
  transform: (s: A, sourceMap?: SourceMap) => B
): ParseFunc<B> {
  return (input) => {
    const result = p(input);
    if (result.success) {
      return success(
        transform(result.value, result.sourceMap),
        result.remaining,
        result.sourceMap
      );
    }
    return result;
  };
}

export function optional<T>(p: ParseFunc<T>): ParseFunc<T | undefined> {
  return (input) => {
    const result = p(input);
    if (!result.success) {
      return success(undefined, input);
    }
    return result;
  };
}

export function seq<T>(parsers: ParseFunc<T>[]): ParseFunc<T[]> {
  return (input) => {
    let remaining = input;
    let output = [];
    for (const parser of parsers) {
      const result = parser(remaining);
      if (!result.success) {
        return failure(result.error);
      }
      output.push(result.value);
      remaining = result.remaining;
    }
    return success(output, input);
  };
}

export function bind<A, B>(
  a: ParseFunc<A>,
  f: (a: A) => ParseFunc<B>
): ParseFunc<B> {
  return (input) => {
    const result = a(input);
    if (result.success) {
      return f(result.value)(result.remaining);
    } else {
      return failure<B>(result.error);
    }
  };
}

export function tup<A, B>(a: ParseFunc<A>, b: ParseFunc<B>): ParseFunc<[A, B]> {
  return bind(a, (a) => {
    return map(b, (b) => [a, b]);
  });
}

export function tup3<A, B, C>(
  a: ParseFunc<A>,
  b: ParseFunc<B>,
  c: ParseFunc<C>
): ParseFunc<[A, B, C]> {
  return bind(a, (a) => {
    return bind(b, (b) => {
      return map(c, (c) => [a, b, c]);
    });
  });
}

export function tup4<A, B, C, D>(
  a: ParseFunc<A>,
  b: ParseFunc<B>,
  c: ParseFunc<C>,
  d: ParseFunc<D>
): ParseFunc<[A, B, C, D]> {
  return bind(a, (a) => {
    return bind(b, (b) => {
      return bind(c, (c) => {
        return map(d, (d) => [a, b, c, d]);
      });
    });
  });
}

export function tup5<A, B, C, D, E>(
  a: ParseFunc<A>,
  b: ParseFunc<B>,
  c: ParseFunc<C>,
  d: ParseFunc<D>,
  e: ParseFunc<E>
): ParseFunc<[A, B, C, D, E]> {
  return bind(a, (a) => {
    return bind(b, (b) => {
      return bind(c, (c) => {
        return bind(d, (d) => {
          return map(e, (e) => [a, b, c, d, e]);
        });
      });
    });
  });
}

export function left<L, R>(l: ParseFunc<L>, r: ParseFunc<R>): ParseFunc<L> {
  return bind(l, (l) => {
    return map(r, () => l);
  });
}

export function right<L, R>(l: ParseFunc<L>, r: ParseFunc<R>): ParseFunc<R> {
  return bind(l, () => {
    return map(r, (r) => r);
  });
}

export function between<L, V, R>(
  l: ParseFunc<L>,
  v: ParseFunc<V>,
  r: ParseFunc<R>
): ParseFunc<V> {
  return bind(l, () => {
    return bind(v, (v) => {
      return map(r, () => v);
    });
  });
}

export function many<T>(parser: ParseFunc<T>): ParseFunc<T[]> {
  return (input) => {
    let output = [];
    let result: ParseResult<T>;
    let remaining = input;
    result = parser(remaining);
    while (result.success) {
      output.push(result.value);
      remaining = result.remaining;
      result = parser(remaining);
    }
    return success(output, remaining);
  };
}

export function separated<A, B>(
  value: ParseFunc<A>,
  separator: ParseFunc<B>
): ParseFunc<A[]> {
  return (input) => {
    let output = [];
    let result: ParseResult<A>;
    let remaining = input;
    result = value(remaining);
    while (result.success) {
      output.push(result.value);
      remaining = result.remaining;
      result = right(separator, value)(remaining);
    }
    return success(output, remaining);
  };
}

export function oneOf<T>(parsers: ParseFunc<T>[]): ParseFunc<T> {
  return (input) => {
    for (const parser of parsers) {
      const result = parser(input);
      if (result.success) {
        return result;
      }
    }
    return failure("No parsers matched");
  };
}

export function or<A, B>(a: ParseFunc<A>, b: ParseFunc<B>): ParseFunc<A | B> {
  return (input) => {
    const result = a(input);
    if (result.success) {
      return result;
    } else {
      return b(input);
    }
  };
}
