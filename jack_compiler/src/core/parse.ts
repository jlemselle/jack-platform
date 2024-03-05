export function trimWhitespace(source: string): string[] {
  return source
    .split("\n")
    .map((line) => line.trim())
    .filter((line) => line !== "");
}

export function trimCommentsAndWhitespace(source: string): string[] {
  return source
    .split("\n")
    .map((line) => trimComment(line))
    .filter((line) => line !== "");
}

export function nonDestructiveTrimCommentsAndWhitespace(
  source: string
): { trimmed: string; original: string }[] {
  return source
    .split("\n")
    .map((line) => ({ trimmed: trimComment(line), original: line.trim() }))
    .filter((line) => line.trimmed !== "");
}

export function trimComment(line: string): string {
  if (line.includes("//")) {
    return line.substring(0, line.indexOf("//")).trim();
  }
  return line.trim();
}
