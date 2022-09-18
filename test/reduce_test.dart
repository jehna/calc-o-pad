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

  test("reduces variables with obscure names", () {
    expect(
        reduce(
            env("päivää: 1 + 2\nMörri Möykky: 3 + 4\nMörri Möykky + päivää")),
        env("päivää: 3\nMörri Möykky: 7\n10"));
  });

  test('A type transfers over in artihmetic', () {
    expect(reduce(env("1 + 2 apples")), env("3 apples"));
  });

  test("euro transfers over in artihmetic", () {
    expect(reduce(env("1€ + 2")), env("3 €"));
  });

  test("reduces only rows that can be parsed", () {
    expect(reduce(env("1 + 2\nthere are two dogs\nx: 10")), env("3\nx: 10"));
  });

  group("Percentages", () {
    // Percentage aswers with references to answers from Wolfram Alpha

    test("bahave regularly with other percentages", () {
      // Wolfram Alpha considers that percentages are recursively applied, but I think values with same type should behave regularly
      expect(reduce(env("20% + 20%")), env("40%")); // WA: 24%
      expect(reduce(env("20% - 20%")), env("0%")); // WA: 16%
      expect(reduce(env("20% * 20%")), env("400%")); // WA: 4%
      expect(reduce(env("20% / 20%")), env("1%")); // WA: 1
    });

    test('Addition and subtraction with mixed types have special cases', () {
      expect(reduce(env("20 + 20%")), env("24"));
      expect(reduce(env("20% + 20")), env("24"));
      expect(reduce(env("-20 + 20%")), env("-24"));
      expect(reduce(env("20 - 20%")), env("16"));
      expect(reduce(env("20% - 20")), env("-24"));
    });

    test(
        'are otherwise converted to a fraction for sanity when they\'re mixed with other types',
        () {
      expect(reduce(env("20% * 20")), env("4"));
      expect(reduce(env("20 * 20%")), env("4"));
      expect(reduce(env("20% / 20")), env("0.01"));
      expect(reduce(env("20 / 20%")), env("100")); // WA: 0.01
    });
  });
}
