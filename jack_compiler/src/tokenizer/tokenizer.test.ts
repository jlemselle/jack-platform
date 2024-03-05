import { nextToken, tokenize } from "./tokenizer";

describe("Tokenizer", () => {
  it("should tokenize empty string", () => {
    expect(nextToken("")).toBe(null);
  });

  it("should tokenize number", () => {
    expect(nextToken("1")).toMatchObject({
      type: "number",
      value: "1",
    });

    expect(nextToken("100")).toMatchObject({
      type: "number",
      value: "100",
    });
  });

  it("should tokenize symbol", () => {
    expect(nextToken("~")).toMatchObject({
      type: "symbol",
      value: "~",
    });

    expect(nextToken(";")).toMatchObject({
      type: "symbol",
      value: ";",
    });
  });

  it("should tokenize keyword", () => {
    expect(nextToken("constructor")).toMatchObject({
      type: "keyword",
      value: "constructor",
    });

    expect(nextToken("return")).toMatchObject({
      type: "keyword",
      value: "return",
    });
  });

  it("should tokenize whitespace", () => {
    expect(nextToken("   ")).toMatchObject({
      type: "whitespace",
      value: "   ",
    });

    expect(nextToken("\n")).toMatchObject({
      type: "whitespace",
      value: "\n",
    });
  });

  it("should tokenize string", () => {
    expect(nextToken('""')).toMatchObject({
      type: "string",
      value: '""',
    });

    expect(nextToken('"bob"')).toMatchObject({
      type: "string",
      value: '"bob"',
    });
  });

  it("should tokenize identifier", () => {
    expect(nextToken("x")).toMatchObject({
      type: "identifier",
      value: "x",
    });

    expect(nextToken("my_variable")).toMatchObject({
      type: "identifier",
      value: "my_variable",
    });
  });

  it("should tokenize multiple tokens", () => {
    const input = `
      let x = "bob";
      15
    `;

    const result = tokenize(input, false);

    expect(result[0]).toMatchObject({
      type: "keyword",
      value: "let",
    });
    expect(result[1]).toMatchObject({
      type: "identifier",
      value: "x",
    });
    expect(result[2]).toMatchObject({
      type: "symbol",
      value: "=",
    });
    expect(result[3]).toMatchObject({
      type: "string",
      value: '"bob"',
    });
    expect(result[4]).toMatchObject({
      type: "symbol",
      value: ";",
    });
    expect(result[5]).toMatchObject({
      type: "number",
      value: "15",
    });
  });
});
