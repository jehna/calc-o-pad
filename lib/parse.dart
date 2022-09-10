import 'package:freezed_annotation/freezed_annotation.dart';
part 'parse.freezed.dart';

@freezed
class AST with _$AST {
  const factory AST.number(double value, [@Default(null) String? type]) =
      Number;
  const factory AST.add(List<AST> operands) = Add;
  const factory AST.subtract(List<AST> operands) = Subtract;
  const factory AST.multiply(List<AST> operands) = Multiply;
  const factory AST.divide(List<AST> operands) = Divide;
  const factory AST.assign(String variable, AST value) = Assign;
  const factory AST.variable(String name) = Variable;
  const factory AST.raiseToPower(AST base, AST exponent) = RaiseToPower;
}

AST parse(String input) {
  final result = oneOf([
    parseAssignment,
    parseAdd,
    parseSubtraction,
    parseMultiplication,
    parseDivision,
    parsePower,
    parseNumber,
    parseVariable
  ])(input);
  if (result is Ok<AST>) {
    return result.value;
  } else {
    throw "Failed to parse";
  }
}

@freezed
class Result<T> with _$Result {
  const factory Result.ok(T value) = Ok;
  const factory Result.none() = None;
}

typedef Parser = Result<AST> Function(String input);

Parser oneOf(List<Parser> parsers) {
  return (input) {
    for (final parser in parsers) {
      final result = parser(input);
      if (result is Ok) {
        return result;
      }
    }
    return const None();
  };
}

Result<AST> parseNumber(String input) {
  final match = RegExp(r"^ *([0-9 ]+([,.]\d+)?) *(?<type>[a-zA-Z\/€$]+)? *")
      .firstMatch(input);
  if (match == null) {
    return const None();
  }

  final number =
      double.tryParse(match.group(1)!.replaceAll(" ", "").replaceAll(",", "."));
  final type = match.namedGroup("type");
  if (number != null) {
    return Ok(Number(number, type));
  }
  return const None();
}

Result<AST> parseAdd(String input) {
  final match = RegExp(r"^(?<LHS>[^+]+)?\+(?<RHS>.*)").firstMatch(input);
  if (match == null) {
    return const None();
  }

  final lhs = match.namedGroup("LHS");
  final rhs = match.namedGroup("RHS")!;

  return Ok(Add(lhs != null ? [parse(lhs), parse(rhs)] : [parse(rhs)]));
}

Result<AST> parseSubtraction(String input) {
  final match = RegExp(r"^(?<LHS>[^-]+)?\-(?<RHS>.*)").firstMatch(input);
  if (match == null) {
    return const None();
  }

  final lhs = match.namedGroup("LHS");
  final rhs = match.namedGroup("RHS")!;
  final rhsParsed = parse(rhs);
  final List<AST> operands = [];
  if (lhs != null) {
    operands.add(parse(lhs));
  } else {
    // Implicit zero
    operands.add(const Number(0));
  }

  if (rhsParsed is Subtract) {
    operands.addAll(rhsParsed.operands);
  } else {
    operands.add(rhsParsed);
  }

  return Ok(Subtract(operands));
}

Result<AST> parseMultiplication(String input) {
  final match = RegExp(r"^(?<LHS>[^*]*)\*(?<RHS>.*)").firstMatch(input);
  if (match == null) {
    return const None();
  }

  final lhs = parse(match.namedGroup("LHS")!);
  final rhs = parse(match.namedGroup("RHS")!);
  return Ok(Multiply([lhs, rhs]));
}

Result<AST> parseDivision(String input) {
  final match = RegExp(r"^(?<LHS>[^/]*)\/(?<RHS>.*)").firstMatch(input);
  if (match == null) {
    return const None();
  }

  final lhs = parse(match.namedGroup("LHS")!);
  final rhs = parse(match.namedGroup("RHS")!);

  final operands = [lhs];
  if (rhs is Divide) {
    operands.addAll(rhs.operands);
  } else {
    operands.add(rhs);
  }

  return Ok(Divide(operands));
}

Result<AST> parsePower(String input) {
  final match = RegExp(r"^(?<LHS>[^\^]*)\^(?<RHS>.*)").firstMatch(input);
  if (match == null) {
    return const None();
  }

  final lhs = parse(match.namedGroup("LHS")!);
  final rhs = parse(match.namedGroup("RHS")!);

  return Ok(RaiseToPower(lhs, rhs));
}

Result<AST> parseAssignment(String input) {
  final match =
      RegExp(r"^(?<LHS>[a-zA-Zäåö ]+) *: *(?<RHS>.+)").firstMatch(input);
  if (match == null) {
    return const None();
  }

  final lhs = match.namedGroup("LHS")!;
  final rhs = parse(match.namedGroup("RHS")!);

  return Ok(Assign(lhs, rhs));
}

Result<AST> parseVariable(String input) {
  final match =
      RegExp(r"^ *([a-zA-Zäåö ]*[a-zA-Zäåö]+) *").firstMatch(input)?.group(1);
  if (match == null) {
    return const None();
  }

  return Ok(Variable(match));
}
