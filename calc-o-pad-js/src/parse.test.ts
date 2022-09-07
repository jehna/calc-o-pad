import test from "ava";
import { parse } from "./parse";

test("parses simple addition", (t) => {
  t.deepEqual(parse("1 + 2"), {
    type: "add",
    values: [
      { type: "number", value: 1 },
      { type: "number", value: 2 },
    ],
  });
});

test("parses simple subtraction with three numbers", (t) => {
  t.deepEqual(parse("5 - 2 - 1"), {
    type: "subtract",
    values: [
      { type: "number", value: 5 },
      { type: "number", value: 2 },
      { type: "number", value: 1 },
    ],
  });
});
