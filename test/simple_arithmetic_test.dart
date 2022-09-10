import 'package:calc_o_pad/evaluate_to_number.dart';
import 'package:calc_o_pad/parse.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("performs simple addition of two numbers", () {
    expect(evaluateToNumber(parse("1 + 2")), const Number(3));
  });

  test("performs simple addition of three numbers", () {
    expect(evaluateToNumber(parse("1 + 2 + 3")), const Number(6));
  });

  test("Leading plus is allowed", () {
    expect(evaluateToNumber(parse("+2 + 3")), const Number(5));
  });

  test("performs simple subtraction of two numbers", () {
    expect(evaluateToNumber(parse("2 - 1")), const Number(1));
  });

  test("performs simple subtraction of three numbers", () {
    expect(evaluateToNumber(parse("5 - 2 - 1")), const Number(2));
  });

  test("Leading minus is allowed", () {
    expect(evaluateToNumber(parse("-2 + 3")), const Number(1));
  });

  test("works with both subtraction and addition", () {
    expect(evaluateToNumber(parse("1 + 2 - 3")), const Number(0));
    expect(evaluateToNumber(parse("3 - 2 + 1")), const Number(2));
  });

  test("works with both subtraction and addition occurring multiple times", () {
    expect(evaluateToNumber(parse("1 + 2 - 3 + 4 - 5")), const Number(-1));
    expect(evaluateToNumber(parse("5 - 4 + 3 - 2 + 1")), const Number(3));
  });

  test("Works with multiplication", () {
    expect(evaluateToNumber(parse("2 * 2")), const Number(4));
  });

  test("Works with multiple multiplications", () {
    expect(evaluateToNumber(parse("2 * 2 * 3 * 4 * 5")), const Number(240));
  });

  test("Works with division", () {
    expect(evaluateToNumber(parse("4 / 2")), const Number(2));
  });

  test("works with *-+/", () {
    expect(
        evaluateToNumber(parse("2 * 2 + 3 * 8 / 2 - 5 * 6 + 7 * 2 - 10 / 2")),
        const Number(-5));
  });
}
