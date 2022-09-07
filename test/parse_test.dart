import 'package:calc_o_pad/parse.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("parses simple addition", () {
    expect(parse("1 + 2"), const Add([Number(1), Number(2)]));
  });

  test("parses simple subtraction with three numbers", () {
    expect(
        parse("5 - 2 - 1"), const Subtract([Number(5), Number(2), Number(1)]));
  });
}
