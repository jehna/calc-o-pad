import 'package:calc_o_pad/environment.dart';
import 'package:calc_o_pad/evaluate_to_number.dart';
import 'package:calc_o_pad/parse.dart';

Environment reduce(Environment env) {
  var prev = env;
  var next = env;
  do {
    prev = next;
    next = _reduceOnce(prev);
  } while (prev != next);
  return next;
}

Environment _reduceOnce(Environment env) => Environment(env.items
    .map((item) => fold(item, (value) {
          if (value is Add ||
              value is Subtract ||
              value is Multiply ||
              value is Divide) {
            try {
              return Number(evaluateToNumber(value));
            } catch (e) {
              return value;
            }
          } else if (value is Variable) {
            for (final item in env.items) {
              if (item is Assign &&
                  item.variable == value.name &&
                  item.value is Number) {
                return item.value;
              }
            }
            return value;
          } else {
            return value;
          }
        }))
    .toList());

AST fold(AST ast, AST Function(AST) f) {
  final folded = f(ast);
  if (folded is Add) {
    return Add(folded.operands.map((operand) => fold(operand, f)).toList());
  } else if (folded is Subtract) {
    return Subtract(
        folded.operands.map((operand) => fold(operand, f)).toList());
  } else if (folded is Multiply) {
    return Multiply(
        folded.operands.map((operand) => fold(operand, f)).toList());
  } else if (folded is Divide) {
    return Divide(folded.operands.map((operand) => fold(operand, f)).toList());
  } else if (folded is Assign) {
    return Assign(folded.variable, fold(folded.value, f));
  } else {
    return folded;
  }
}
