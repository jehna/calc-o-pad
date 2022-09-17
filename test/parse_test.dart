import 'package:calc_o_pad/parse.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("parses simple addition", () {
    expect(parse("1 + 2"), const Add([Number(1), Number(2)]));
  });

  test("parses simple subtraction with three numbers", () {
    expect(
        parse("5 - 2 - 1"),
        const Subtract([
          Subtract([Number(5.0), Number(2.0)]),
          Number(1.0)
        ]));
  });

  test("assigns to a variable", () {
    expect(parse("x: 1"), const Assign("x", Number(1)));
  });

  test("assigns a complex expression to a variable", () {
    expect(
        parse("x: 1 + 2 * 3"),
        const Assign(
            "x",
            Add([
              Number(1),
              Multiply([Number(2), Number(3)])
            ])));
  });

  test("parses a variable as a part of the expression", () {
    expect(parse("x + 1"), const Add([Variable("x"), Number(1)]));
  });
}
