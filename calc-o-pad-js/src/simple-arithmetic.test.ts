import test from "ava";
import { evaluateToNumber } from "./evaluate-to-number";
import { parse } from "./parse";

test("performs simple addition of two numbers", (t) => {
  t.is(evaluateToNumber(parse("1 + 2")), 3);
});

test("performs simple addition of three numbers", (t) => {
  t.is(evaluateToNumber(parse("1 + 2 + 3")), 6);
});

test("Leading plus is allowed", (t) => {
  t.is(evaluateToNumber(parse("+2 + 3")), 5);
});

test("performs simple subtraction of two numbers", (t) => {
  t.is(evaluateToNumber(parse("2 - 1")), 1);
});

test("performs simple subtraction of three numbers", (t) => {
  t.is(evaluateToNumber(parse("5 - 2 - 1")), 2);
});

test("Leading minus is allowed", (t) => {
  t.is(evaluateToNumber(parse("-2 + 3")), 1);
});

test("works with both subtraction and addition", (t) => {
  t.is(evaluateToNumber(parse("1 + 2 - 3")), 0);
  t.is(evaluateToNumber(parse("3 - 2 + 1")), 2);
});

test("works with both subtraction and addition occurring multiple times", (t) => {
  t.is(evaluateToNumber(parse("1 + 2 - 3 + 4 - 5")), -1);
  t.is(evaluateToNumber(parse("5 - 4 + 3 - 2 + 1")), 3);
});

test("Works with multiplication", (t) => {
  t.is(evaluateToNumber(parse("2 * 2")), 4);
});

test("Works with multiple multiplications", (t) => {
  t.is(evaluateToNumber(parse("2 * 2 * 3 * 4 * 5")), 240);
});

test("Works with division", (t) => {
  t.is(evaluateToNumber(parse("4 / 2")), 2);
});

test("works with *-+/", (t) => {
  t.is(evaluateToNumber(parse("2 * 2 + 3 * 4 - 5 * 6 + 7 * 2 - 10")), -10);
});
