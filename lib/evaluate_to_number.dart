import 'package:calc_o_pad/parse.dart';

double evaluateToNumber(AST ast) => ast.when(
    number: ((value) => value),
    add: (operands) => operands.fold<double>(
        0.0, (sum, value) => sum + evaluateToNumber(value)),
    subtract: (operands) => operands.sublist(1).fold<double>(
          evaluateToNumber(operands.first),
          (difference, value) => difference - evaluateToNumber(value),
        ),
    multiply: (operands) => operands
        .map<double>(evaluateToNumber)
        .reduce((product, value) => product * value),
    divide: (operands) => operands.sublist(1).fold<double>(
          evaluateToNumber(operands.first),
          (quotient, value) => quotient / evaluateToNumber(value),
        ));
