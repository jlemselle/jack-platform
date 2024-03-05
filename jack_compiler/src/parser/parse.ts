import { tokenize } from "../tokenizer/tokenizer";
import { InputSource, ParseFunc } from "./parse-utils";

export function testParser<T>(source: string, parser: ParseFunc<T>): T {
  const input = new InputSource(tokenize(source, false), 0);
  const result = parser(input);
  if (result.success) {
    return result.value;
  } else {
    throw new Error(result.error);
  }
}
