
(* The type of tokens. *)

type token = 
  | TYPE
  | SCALAR
  | RIGHT_PARENT
  | RIGHT_BRACKET
  | RIGHT_BRACE
  | NAME of (string)
  | LEFT_PARENT
  | LEFT_BRACKET
  | LEFT_BRACE
  | INPUT
  | EXTENDS
  | EOF
  | COLON
  | BANG
  | AT

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val read_schema: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.schema)
