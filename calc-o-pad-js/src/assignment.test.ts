import test from "ava";
import { parse } from "./parse";

test("parses simple addition", (t) => {
  t.deepEqual(parse("foo: 1"), {
    type: "assignment",
    name: "foo",
    value: { type: "number", value: 1 },
  });
});
