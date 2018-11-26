{
  open Lexing
  open Parser

  (* This exception is used when an error is detected *)
  exception SyntaxError of string

  (**
   * Tracks the location of tokens across line breaks
   *)
  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      {
        pos with pos_bol = lexbuf.lex_curr_pos;
        pos_lnum = pos.pos_lnum + 1;
      }
}

let digit = ['0'-'9']
let int = '-'? digit digit*
let float = int? '.' digit*
let whitespace = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let name = ['_' 'a'-'z' 'A'-'Z'] ['_' 'a'-'z' 'A'-'Z' '0' - '9']*

rule read = 
  parse
  | whitespace { read lexbuf }
  | newline { next_line lexbuf; read lexbuf }
  | "{" { LEFT_BRACE }
  | "}" { RIGHT_BRACE }
  | eof { EOF }
  | name { NAME (Lexing.lexeme lexbuf) }
