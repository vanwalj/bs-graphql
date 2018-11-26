(* The type of tokens. *)

type token =
  | TRUE
  | SUBSCRIPTION
  | STRING of string
  | SPREAD
  | RIGHT_PARENT
  | RIGHT_BRACKET
  | RIGHT_BRACE
  | QUERY
  | ON
  | NAME of string
  | MUTATION
  | LEFT_PARENT
  | LEFT_BRACKET
  | LEFT_BRACE
  | INT of int
  | FRAGMENT
  | FLOAT of float
  | FALSE
  | EQUAL
  | EOF
  | DOLLAR
  | COLON
  | BANG

exception (* This exception is raised by the monolithic API functions. *)
            Error

(* The monolithic API. *)

val read_document : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> Types.document
