let serialize json =
  let rec _serialize = function
    | Types.Null -> "null"
    | Types.Bool true -> "true"
    | Types.Bool false -> "false"
    | Types.Int x -> string_of_int x
    | Types.Float x -> string_of_float x
    | Types.String s -> serialize_string s
    | Types.List l -> serialize_list l
    | Types.Assoc a -> serialize_assoc a
  and serialize_list l =
    "[" ^ String.concat "," (l |> List.map _serialize) ^ "]"
  and serialize_assoc a =
    "{"
    ^ String.concat ","
        ( a
        |> List.map (fun (id, v) -> serialize_string id ^ ":" ^ _serialize v)
        )
    ^ "}"
  and serialize_string s = "\"" ^ s ^ "\"" in
  _serialize json
