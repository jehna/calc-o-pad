import 'package:calc_o_pad/parser_combinator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should parse number", () {
    expect(
        parseTokens("10"), const Success<List<Token>>([NumberToken(10)], ""));
    expect(parseTokens("12.345"),
        const Success<List<Token>>([NumberToken(12.345)], ""));
  });

  test('Should parse simple arithmetic', () {
    expect(
        parseTokens("2+1"),
        const Success<List<Token>>(
            [NumberToken(2), PlusToken(), NumberToken(1)], ""));
    expect(
        parseTokens("2 - 1"),
        const Success<List<Token>>(
            [NumberToken(2), MinusToken(), NumberToken(1)], ""));
  });

  test("Should parse artihmetic", () {
    expect(
        parseTokens("(10+10.5)^5/2*3"),
        const Success<List<Token>>([
          LeftParenthesisToken(),
          NumberToken(10),
          PlusToken(),
          NumberToken(10.5),
          RightParenthesisToken(),
          PowerToken(),
          NumberToken(5),
          DivideToken(),
          NumberToken(2),
          MultiplyToken(),
          NumberToken(3)
        ], ""));
  });

  test("Should parse artihmetic with spaces", () {
    expect(
        parseTokens("(10 + 10.5)^5 / 2 * 3"),
        const Success<List<Token>>([
          LeftParenthesisToken(),
          NumberToken(10),
          PlusToken(),
          NumberToken(10.5),
          RightParenthesisToken(),
          PowerToken(),
          NumberToken(5),
          DivideToken(),
          NumberToken(2),
          MultiplyToken(),
          NumberToken(3)
        ], ""));
  });

  test("char()", () {
    expect(char("a")("abc"), const Success("a", "bc"));
    expect(char("a")("bc"), const Failure<String>());
  });

  test("oneOf()", () {
    final parser = oneOf([char("a"), char("b")]);
    expect(parser("abc"), const Success("a", "bc"));
    expect(parser("babc"), const Success("b", "abc"));
    expect(parser("cab"), const Failure<String>());
  });

  test('digit()', () {
    expect(digit("123"), const Success("1", "23"));
    expect(digit("abc"), const Failure<String>());
  });

  test('number()', () {
    expect(number("5"), const Success(NumberToken(5), ""));
    expect(number("123"), const Success(NumberToken(123), ""));
    expect(number("123.456"), const Success(NumberToken(123.456), ""));
    expect(number("123,456"), const Success(NumberToken(123.456), ""));
    expect(number("abc"), const Failure<NumberToken>());
    expect(number("134,"), const Success(NumberToken(134), ","));
    expect(number("134."), const Success(NumberToken(134), "."));
  });

  test("maybe()", () {
    final parser = maybeString(char("a"));
    expect(parser("abc"), const Success("a", "bc"));
    expect(parser("bc"), const Success("", "bc"));
  });
}
