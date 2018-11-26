open Lexer
open Lexing

type position = {fileName: string; lineNumber: int; columnNumber: int}

type message = string

type parse_error =
  | SyntaxError of (position * message)
  | ParserError of position

let get_position lexbuf =
  let pos = lexbuf.lex_curr_p in
  { fileName= pos.pos_fname
  ; lineNumber= pos.pos_lnum
  ; columnNumber= pos.pos_cnum - pos.pos_bol + 1 }

let parse s =
  let lexbuf = from_string s in
  try Belt.Result.Ok (Parser.read_document Lexer.read lexbuf) with
  | SyntaxError msg ->
      Belt.Result.Error (SyntaxError (get_position lexbuf, msg))
  | Parser.Error -> Belt.Result.Error (ParserError (get_position lexbuf))
