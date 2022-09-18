import 'dart:math';

import 'package:calc_o_pad/parse.dart';

Number evaluateToNumber(AST ast) => ast.when(
    number: ((value, type) => Number(value, type)),
    add: (operands) => operands
            .sublist(1)
            .fold<Number>(evaluateToNumber(operands.first), (sum, value) {
          final numValue = evaluateToNumber(value);
          // TODO: Generalise over arithmetic between different types when we have more special cases
          if (numValue.type == "%" && sum.type != "%") {
            return multiply(sum, add(const Number(1), numValue));
          } else if (numValue.type != "%" && sum.type == "%") {
            return multiply(add(const Number(1), sum), numValue);
          }
          return add(sum, numValue);
        }),
    subtract: (operands) => operands.sublist(1).fold<Number>(
          evaluateToNumber(operands.first),
          (difference, value) {
            final numValue = evaluateToNumber(value);
            // TODO: Generalise over arithmetic between different types when we have more special cases
            if (numValue.type == "%" && difference.type != "%") {
              return multiply(difference, Number(1 - (numValue.value / 100)));
            } else if (numValue.type != "%" && difference.type == "%") {
              return multiply(subtract(const Number(0), numValue),
                  Number(1 + (difference.value / 100)));
            }
            return subtract(difference, evaluateToNumber(value));
          },
        ),
    multiply: (operands) => operands
        .map<Number>(evaluateToNumber)
        .reduce((product, value) => multiply(product, value)),
    divide: (operands) => operands.sublist(1).fold<Number>(
          evaluateToNumber(operands.first),
          (quotient, value) => divide(quotient, evaluateToNumber(value)),
        ),
    assign: (variable, value) {
      throw "Cannot convert assignment to number";
    },
    variable: (name) {
      throw "Cannot convert variable to number";
    },
    raiseToPower: (base, exponent) =>
        raiseToPower(evaluateToNumber(base), evaluateToNumber(exponent)));

Number Function(Number a, Number b) _reduceNumbers(
    double Function(double a, double b) callback) {
  return (a, b) {
    if (a.type == b.type) {
      return Number(callback(a.value, b.value), a.type);
    } else if (a.type == "%" && b.type != "%") {
      // TODO: Generalise over arithmetic between different types when we have more special cases
      return Number(callback(a.value / 100, b.value), b.type);
    } else if (a.type != "%" && b.type == "%") {
      return Number(callback(a.value, b.value / 100), a.type);
    } else if (a.type == "") {
      return Number(callback(a.value, b.value), b.type);
    } else if (b.type == "") {
      return Number(callback(a.value, b.value), a.type);
    } else {
      throw "Cannot combine numbers of different types";
    }
  };
}

final add = _reduceNumbers((a, b) => a + b);
final subtract = _reduceNumbers((a, b) => a - b);
final multiply = _reduceNumbers((a, b) => a * b);
final divide = _reduceNumbers((a, b) => a / b);
final raiseToPower = _reduceNumbers((a, b) => pow(a, b).toDouble());
