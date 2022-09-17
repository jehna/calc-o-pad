import 'package:calc_o_pad/environment.dart';
import 'package:calc_o_pad/reduce.dart';
import 'package:flutter_test/flutter_test.dart';

Environment env(String input) => Environment.fromString(input);

void main() {
  test("reduces simple math to a single number", () {
    expect(reduce(env("1 + 2")), env("3"));
  });

  test("reduces variable value with simple math to single number", () {
    expect(reduce(env("x: 1 + 2")), env("x: 3"));
  });

  test("reduces variable values with simple math to single numbers", () {
    expect(reduce(env("x: 1 + 2\ny: 3 + 4\nx + y")), env("x: 3\ny: 7\n10"));
  });
}
