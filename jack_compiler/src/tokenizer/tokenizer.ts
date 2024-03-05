import { SourceMap, Token } from "./token";
import { TokenType } from "./token-type";

export class LineCounter {
  private line = 1;
  private column = 1;

  public getSourceMap(): SourceMap {
    return {
      line: this.line,
      column: this.column,
    };
  }

  public consume(value: string): void {
    for (const char of value) {
      if (char === "\n") {
        this.line++;
        this.column = 1;
      } else {
        this.column++;
      }
    }
  }
}

export function tokenize(source: string, includeWhitespace: boolean): Token[] {
  let lineCounter = new LineCounter();
  let remaining = source;
  let tokens: Token[] = [];
  let next = nextToken(source);
  while (next !== null) {
    remaining = remaining.slice(next.value.length);
    if (!["whitespace", "comment"].includes(next.type) || includeWhitespace) {
      next.sourceMap = lineCounter.getSourceMap();
      tokens.push(next);
    }
    lineCounter.consume(next.value);
    next = nextToken(remaining);
  }
  return tokens;
}

export function nextToken(source: string): Token | null {
  const parsers = [
    parseWhitespace,
    parseNumber,
    parseMultiLineComment,
    parseComment,
    parseSymbol,
    parseKeyword,
    parseString,
    parseIdentifier,
  ];

  for (const parser of parsers) {
    const result = parser(source);
    if (result.success) {
      return result.token;
    }
  }

  return null;
}

type ParseResult =
  | {
      success: false;
    }
  | {
      success: true;
      token: Token;
      remaining: string;
    };

function parseSymbol(source: string): ParseResult {
  return parseOneOf(
    [
      "{",
      "}",
      "(",
      ")",
      "[",
      "]",
      ".",
      ",",
      ";",
      "+",
      "-",
      "*",
      "/",
      "&",
      "|",
      "<",
      ">",
      "=",
      "~",
    ],
    "symbol",
    source
  );
}

function parseKeyword(source: string): ParseResult {
  return parseRegex(
    /^(class|method|function|constructor|int|boolean|char|void|var|static|field|let|do|if|else|while|return|true|false|null|this)\b/,
    "keyword",
    source
  );
}

function parseNumber(source: string): ParseResult {
  return parseRegex(/^\d+/, "number", source);
}

function parseString(source: string): ParseResult {
  return parseRegex(/^"[^"]*"/, "string", source);
}

function parseIdentifier(source: string): ParseResult {
  return parseRegex(/^[a-zA-Z][a-zA-Z0-9_]*/, "identifier", source);
}

function parseWhitespace(source: string): ParseResult {
  return parseRegex(/^\s+/, "whitespace", source);
}

function parseMultiLineComment(source: string): ParseResult {
  return parseRegex(/^\/\*[\s\S]*?\*\//, "comment", source);
}

function parseComment(source: string): ParseResult {
  return parseRegex(/^\/\/[^\n]*\n/, "comment", source);
}

function parseRegex(
  regex: RegExp,
  type: TokenType,
  source: string
): ParseResult {
  const matchResult = source.match(regex);
  if (matchResult) {
    return {
      success: true,
      token: { type, value: matchResult[0] },
      remaining: source.slice(matchResult[0].length),
    };
  }

  return {
    success: false,
  };
}

function parseOneOf(
  possibilities: string[],
  type: TokenType,
  source: string
): ParseResult {
  for (const possibility of possibilities) {
    if (source.startsWith(possibility)) {
      return {
        success: true,
        token: { type, value: possibility },
        remaining: source.slice(possibility.length),
      };
    }
  }

  return {
    success: false,
  };
}
