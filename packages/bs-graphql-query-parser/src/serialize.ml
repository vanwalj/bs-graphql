open Types

let serialize_operation_type = function
  | Query -> "query"
  | Mutation -> "mutation"
  | Subscription -> "subscription"

let serialize_operation_name = function
  | None -> " "
  | Some name -> " " ^ name ^ " "

let rec serialize_value = function
  | `Int int -> string_of_int int
  | `Float float -> string_of_float float
  | `Bool true -> "true"
  | `Bool false -> "false"
  | `String string -> "\"" ^ string ^ "\""
  | `Enum enum -> enum
  | `Null -> "null"
  | `Variable variable -> "$" ^ variable
  | `List list ->
      "[" ^ String.concat "," (list |> List.map serialize_value) ^ "]"
  | `Assoc assoc ->
      "{"
      ^ String.concat ","
          ( assoc
          |> List.map (fun (key, value) ->
                 "\"" ^ key ^ "\": " ^ serialize_value value ) )
      ^ "}"

let serialize_argument (name, value) = name ^ ":" ^ serialize_value value

let serialize_arguments_list arguments_list =
  "("
  ^ String.concat ", " (arguments_list |> List.map serialize_argument)
  ^ ")"

let rec serialize_variable_type = function
  | Type typ -> typ
  | NonNullable var -> serialize_variable_type var ^ "!"
  | List var -> "[" ^ serialize_variable_type var ^ "]"

and serialize_variable (Variable {name; typ; default}) =
  "$" ^ name ^ ":"
  ^ serialize_variable_type typ
  ^
  match default with
  | None -> ""
  | Some default -> " = " ^ serialize_value default

and serialize_operation_variables operation_variables =
  let rec _serialize_operation_variables = function
    | [] -> []
    | head :: tail ->
        let serialized_variable = _serialize_operation_variables tail in
        serialize_variable head :: serialized_variable
  in
  match operation_variables with
  | None -> ""
  | Some operation_variables ->
      "("
      ^ String.concat ", " (_serialize_operation_variables operation_variables)
      ^ ")"

and serialize_fragment {name; type_name; selection} =
  "fragment " ^ name ^ " on " ^ type_name ^ serialize_selection_list selection

and serialize_field {name; alias; selection; arguments} =
  (match alias with None -> "" | Some alias -> alias ^ ":")
  ^ name
  ^ ( match arguments with
    | None -> ""
    | Some arguments -> serialize_arguments_list arguments )
  ^
  match selection with
  | None -> ""
  | Some selection -> serialize_selection_list selection

and serialize_fragment_spread ({name} : fragment_spread) = "...on " ^ name

and serialize_inline_fragment {type_name; selection} =
  "...on " ^ type_name ^ " " ^ serialize_selection_list selection

and serialize_selection = function
  | Field field -> serialize_field field
  | FragmentSpread fragment_spread -> serialize_fragment_spread fragment_spread
  | InlineFragment inline_fragment -> serialize_inline_fragment inline_fragment

and serialize_selection_list selection_list =
  "{"
  ^ String.concat " " (selection_list |> List.map serialize_selection)
  ^ "}"

and serialize_operation operation =
  serialize_operation_type operation.typ
  ^ serialize_operation_name operation.name
  ^ serialize_operation_variables operation.variables
  ^ serialize_selection_list operation.selection

and serialize_definition = function
  | Operation operation -> serialize_operation operation
  | Fragment fragment -> serialize_fragment fragment

and serialize_document document =
  String.concat "\n" (document |> List.map serialize_definition)
