export type AST =
  | {
      type: "number";
      value: number;
    }
  | {
      type: "add" | "subtract" | "multiply" | "divide";
      values: AST[];
    }
  | { type: "assignment"; name: string; value: AST };

type Parser = (input: string) => [AST, string] | null;

export function parse(input: string): AST {
  const result = oneOf(
    parseAdd,
    parseSubtraction,
    parseMultiplication,
    parseDivision,
    parseNumber,
    parseAssignment
  )(input);
  if (!result) {
    throw new Error("Could not parse input");
  }
  return result[0];
}

function oneOf(...parsers: Parser[]): Parser {
  return (input) => {
    for (const parser of parsers) {
      const result = parser(input);
      if (result) {
        return result;
      }
    }
    return null;
  };
}

const parseNumber: Parser = (input) => {
  const match = input.match(/^ *(\d+) */);
  if (match) {
    return [
      { type: "number", value: parseInt(match[1]) },
      input.slice(match[0].length),
    ];
  }
  return null;
};

const parseAdd: Parser = (input) => {
  const match = input.match(/^(?<LHS>[^+]*)\+(?<RHS>.*)/);
  if (match) {
    const lhs: string | undefined = match.groups!.LHS;
    const rhs = match.groups!.RHS;
    return [
      {
        type: "add",
        values: lhs ? [parse(lhs), parse(rhs)] : [parse(rhs)],
      },
      "",
    ];
  }
  return null;
};

const parseMultiplication: Parser = (input) => {
  const match = input.match(/^(?<LHS>[^*]*)\*(?<RHS>.*)/);
  if (match) {
    const lhs: string | undefined = match.groups!.LHS;
    const rhs = match.groups!.RHS;
    return [
      {
        type: "multiply",
        values: lhs ? [parse(lhs), parse(rhs)] : [parse(rhs)],
      },
      "",
    ];
  }
  return null;
};

const parseSubtraction: Parser = (input) => {
  const match = input.match(/^(?<LHS>[^-]*)\-(?<RHS>.*)/);
  if (match) {
    const lhs: string | undefined = match.groups!.LHS;
    const rhs = match.groups!.RHS;
    const rhsParsed = parse(rhs);

    const values = [];
    if (lhs) {
      values.push(parse(lhs));
    } else {
      // Implicit zero
      values.push({ type: "number" as const, value: 0 });
    }
    if (rhsParsed.type === "subtract") {
      values.push(...rhsParsed.values);
    } else {
      values.push(rhsParsed);
    }
    return [
      {
        type: "subtract",
        values,
      },
      "",
    ];
  }
  return null;
};

const parseDivision: Parser = (input) => {
  const match = input.match(/^(?<LHS>[^/]*)\/(?<RHS>.*)/);
  if (match) {
    const lhs = parse(match.groups!.LHS);
    const rhs = parse(match.groups!.RHS);

    const values = [lhs];

    if (rhs.type === "divide") {
      values.push(...rhs.values);
    } else {
      values.push(rhs);
    }
    return [
      {
        type: "divide",
        values,
      },
      "",
    ];
  }
  return null;
};

const parseAssignment: Parser = (input) => {
  const match = input.match(/^(?<name>[a-z]+):(?<value>.*)/);
  if (match) {
    return [
      {
        type: "assignment",
        name: match.groups!.name,
        value: parse(match.groups!.value),
      },
      "",
    ];
  }
  return null;
};
