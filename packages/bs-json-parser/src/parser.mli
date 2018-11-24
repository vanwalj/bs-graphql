
(* The type of tokens. *)

type token = 
  | TRUE
  | STRING of (string)
  | RIGHT_BRACKET
  | RIGHT_BRACE
  | NULL
  | LEFT_BRACKET
  | LEFT_BRACE
  | INT of (int)
  | FLOAT of (float)
  | FALSE
  | COMMA
  | COLON

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.t)
