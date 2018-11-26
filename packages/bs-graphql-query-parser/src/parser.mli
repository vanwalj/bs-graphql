
(* The type of tokens. *)

type token = 
  | RIGHT_BRACE
  | NAME of (string)
  | LEFT_BRACE
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val read_document: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.document)
