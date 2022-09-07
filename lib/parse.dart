import 'package:freezed_annotation/freezed_annotation.dart';
part 'parse.freezed.dart';

@freezed
class AST with _$AST {
  const factory AST.number(double value) = Number;
  const factory AST.add(List<AST> operands) = Add;
  const factory AST.subtract(List<AST> operands) = Subtract;
  const factory AST.multiply(List<AST> operands) = Multiply;
  const factory AST.divide(List<AST> operands) = Divide;
}

AST parse(String input) {
  final result = oneOf([
    parseAdd,
    parseSubtraction,
    parseMultiplication,
    parseDivision,
    parseNumber
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
  final match = RegExp(r"^ *(\d+) *").firstMatch(input)?.group(1);
  if (match == null) {
    return const None();
  }

  final number = double.tryParse(match);
  if (number != null) {
    return Ok(Number(number));
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
