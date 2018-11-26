type operation_type = Query | Mutation | Subscription

type primitive_value =
  [ `Int of int
  | `Float of float
  | `Bool of bool
  | `String of string
  | `Enum of string
  | `Null ]

type const_value =
  [ primitive_value
  | `List of const_value list
  | `Assoc of (string * const_value) list ]

type value =
  [ primitive_value
  | `Variable of string
  | `List of value list
  | `Assoc of (string * value) list ]

type field =
  { name: string
  ; alias: string option
  ; selection: selection list option
  ; arguments: (string * value) list option }

and fragment = {name: string; type_name: string; selection: selection list}

and inline_fragment = {type_name: string; selection: selection list}

and fragment_spread = {name: string}

and selection =
  | Field of field
  | FragmentSpread of fragment_spread
  | InlineFragment of inline_fragment

type variable_type =
  | Type of string
  | NonNullable of variable_type
  | List of variable_type

type variable_ = {name: string; typ: variable_type; default: const_value option}

type variable = Variable of variable_

type operation =
  { typ: operation_type
  ; selection: selection list
  ; name: string option
  ; variables: variable list option }

type definition = Operation of operation | Fragment of fragment

type document = definition list
