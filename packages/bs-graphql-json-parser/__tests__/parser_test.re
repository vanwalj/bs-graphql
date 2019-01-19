open Jest;
open Expect;

describe("parse", () => {
  test("should parse a valid empty json object", () =>
    expect(Parser.parse("{}")) |> toEqual(Belt.Result.Ok(Types.Assoc([])))
  );
  test("should parse a valid json list of values", () =>
    expect(
      Parser.parse("[1, \"two\", 3.0, { \"value\": 4 }, [5], true, null]"),
    )
    |> toEqual(
         Belt.Result.Ok(
           Types.List([
             Types.Int(1),
             Types.String("two"),
             Types.Float(3.),
             Types.Assoc([("value", Types.Int(4))]),
             Types.List([Types.Int(5)]),
             Types.Bool(true),
             Types.Null,
           ]),
         ),
       )
  );

  test("should be fast", () => {
    let getTime = () => Js.Date.make() |> Js.Date.getTime;
    let start = getTime();

    let _ = Parser.parse({j|[{"value": 1}]|j});

    let duration = getTime() -. start;

    expect(duration) |> toBeLessThanOrEqual(1.);
  });
});