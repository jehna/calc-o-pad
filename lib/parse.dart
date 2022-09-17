import 'package:calc_o_pad/parser_combinator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'parse.freezed.dart';

@freezed
class AST with _$AST {
  const factory AST.number(double value, [@Default("") String type]) = Number;
  const factory AST.add(List<AST> operands) = Add;
  const factory AST.subtract(List<AST> operands) = Subtract;
  const factory AST.multiply(List<AST> operands) = Multiply;
  const factory AST.divide(List<AST> operands) = Divide;
  const factory AST.assign(String variable, AST value) = Assign;
  const factory AST.variable(String name) = Variable;
  const factory AST.raiseToPower(AST base, AST exponent) = RaiseToPower;
}

AST parse(String input) {
  final result = parseTokens(input);
  return result.when(
    success: (tokens, rest) {
      if (rest.isNotEmpty) {
        throw Exception("Failed to parse: $rest");
      }
      return shuntingYardToAst(shuntingYardAlgorithm(tokens));
    },
    failure: () => throw Exception("Failed to parse: $input"),
  );
}

List<Token> shuntingYardAlgorithm(List<Token> tokens) {
  /*while there are tokens to be read:
    read a token
    if the token is:
    - a number:
        put it into the output queue
    - a function:
        push it onto the operator stack
    - an operator o1:
        while (
            there is an operator o2 other than the left parenthesis at the top
            of the operator stack, and (o2 has greater precedence than o1
            or they have the same precedence and o1 is left-associative)
        ):
            pop o2 from the operator stack into the output queue
        push o1 onto the operator stack
    - a left parenthesis (i.e. "("):
        push it onto the operator stack
    - a right parenthesis (i.e. ")"):
        while the operator at the top of the operator stack is not a left parenthesis:
            {assert the operator stack is not empty}
            /* If the stack runs out without finding a left parenthesis, then there are mismatched parentheses. */
            pop the operator from the operator stack into the output queue
        {assert there is a left parenthesis at the top of the operator stack}
        pop the left parenthesis from the operator stack and discard it
        if there is a function token at the top of the operator stack, then:
            pop the function from the operator stack into the output queue
/* After the while loop, pop the remaining items from the operator stack into the output queue. */
while there are tokens on the operator stack:
    /* If the operator token on the top of the stack is a parenthesis, then there are mismatched parentheses. */
    {assert the operator on top of the stack is not a (left) parenthesis}
    pop the operator from the operator stack onto the output queue
    */

  List<Token> outputQueue = [];
  List<Token> operatorStack = [];

  for (final token in tokens) {
    if (token is NumberToken) {
      outputQueue.add(token);
    } else if (token is VariableToken) {
      outputQueue.add(token);
    } else if (isOperator(token)) {
      while (operatorStack.isNotEmpty &&
          operatorStack.last is! LeftParenthesisToken &&
          (precedence(operatorStack.last) > precedence(token) ||
              (precedence(operatorStack.last) == precedence(token) &&
                  isLeftAssociative(token)))) {
        outputQueue.add(operatorStack.removeLast());
      }
      operatorStack.add(token);
    } else if (token is LeftParenthesisToken) {
      operatorStack.add(token);
    } else if (token is RightParenthesisToken) {
      while (operatorStack.isNotEmpty &&
          operatorStack.last is! LeftParenthesisToken) {
        assert(operatorStack.isNotEmpty, "Mismatched parentheses");
        outputQueue.add(operatorStack.removeLast());
      }
      assert(
          operatorStack.isNotEmpty &&
              operatorStack.last is LeftParenthesisToken,
          "Mismatched parentheses");
      operatorStack.removeLast();
    }
  }
  while (operatorStack.isNotEmpty) {
    assert(
        operatorStack.last is! LeftParenthesisToken, "Mismatched parentheses");
    outputQueue.add(operatorStack.removeLast());
  }

  return outputQueue;
}

AST shuntingYardToAst(List<Token> tokens) {
  List<AST> stack = [];
  for (final token in tokens) {
    if (token is NumberToken) {
      stack.add(AST.number(token.value, token.type));
    } else if (token is VariableToken) {
      stack.add(AST.variable(token.name));
    } else if (isOperator(token)) {
      final operands = stack.sublist(stack.length - 2);
      stack.removeRange(stack.length - 2, stack.length);
      final operation = token.when(
        divide: () => AST.divide(operands),
        multiply: () => AST.multiply(operands),
        plus: () => AST.add(operands),
        minus: () => AST.subtract(operands),
        leftParenthesis: () => throw Exception("Unexpected left parenthesis"),
        rightParenthesis: () => throw Exception("Unexpected right parenthesis"),
        number: (value, type) => throw Exception("Unexpected number"),
        variable: (name) => throw Exception("Unexpected variable"),
        assignment: () {
          final variable = operands[0];
          if (variable is! Variable) throw Exception("Expected variable");
          return AST.assign(variable.name, operands[1]);
        },
        power: () => AST.raiseToPower(operands[0], operands[1]),
      );
      stack.add(operation);
    }
  }
  return stack.first;
}

bool isOperator(Token token) => token.when(
    number: (value, type) => false,
    variable: (name) => false,
    plus: () => true,
    minus: () => true,
    multiply: () => true,
    divide: () => true,
    leftParenthesis: () => false,
    rightParenthesis: () => false,
    power: () => true,
    assignment: () => true);

int precedence(Token token) => token.when(
    number: (value, type) => 0,
    variable: (name) => 0,
    assignment: () => 1,
    plus: () => 2,
    minus: () => 2,
    multiply: () => 3,
    divide: () => 3,
    leftParenthesis: () => 4,
    rightParenthesis: () => 4,
    power: () => 5);

bool isLeftAssociative(Token token) => token.when(
    number: (value, type) => false,
    variable: (name) => false,
    assignment: () => true,
    plus: () => true,
    minus: () => true,
    multiply: () => true,
    divide: () => true,
    leftParenthesis: () => true,
    rightParenthesis: () => true,
    power: () => false);
