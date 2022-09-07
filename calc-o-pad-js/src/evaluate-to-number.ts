import { AST } from "./parse";

export function evaluateToNumber(ast: AST): number {
  switch (ast.type) {
    case "number":
      return ast.value;
    case "add":
      return ast.values.reduce(
        (sum, value) => sum + evaluateToNumber(value),
        0
      );
    case "subtract": {
      return ast.values
        .slice(1)
        .reduce(
          (difference, value) => difference - evaluateToNumber(value),
          evaluateToNumber(ast.values[0])
        );
    }
    case "multiply":
      return ast.values
        .slice(1)
        .reduce(
          (product, value) => product * evaluateToNumber(value),
          evaluateToNumber(ast.values[0])
        );
    case "divide": {
      return ast.values
        .slice(1)
        .reduce(
          (quotient, value) => quotient / evaluateToNumber(value),
          evaluateToNumber(ast.values[0])
        );
    }
    case "assignment":
      // TODO: Implement assignment
      return evaluateToNumber(ast.value);
  }
}
