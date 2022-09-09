import 'package:calc_o_pad/environment.dart';
import 'package:calc_o_pad/parse.dart';

String prettyPrint(Environment env) {
  return env.items.map((item) => prettyPrintAST(item)).join('\n');
}

String prettyPrintAST(AST ast) {
  return ast.when(
    number: ((value, type) => type != null ? "$value $type" : "$value"),
    add: (operands) =>
        operands.map((operand) => prettyPrintAST(operand)).join(' + '),
    subtract: (operands) =>
        operands.map((operand) => prettyPrintAST(operand)).join(' - '),
    multiply: (operands) =>
        operands.map((operand) => prettyPrintAST(operand)).join(' * '),
    divide: (operands) =>
        operands.map((operand) => prettyPrintAST(operand)).join(' / '),
    assign: (variable, value) => '$variable: ${prettyPrintAST(value)}',
    variable: (name) => name,
    raiseToPower: (base, exponent) =>
        '${prettyPrintAST(base)} ^ ${prettyPrintAST(exponent)}',
  );
}
