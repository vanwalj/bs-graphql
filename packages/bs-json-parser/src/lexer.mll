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

rule read = 
  parse
  | whitespace { read lexbuf }
  | newline { next_line lexbuf; read lexbuf }
  | "null" { NULL }
  | "true" { TRUE }
  | "false" { FALSE }
  | int { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | '"' { read_string (Buffer.create 17) lexbuf }
  | "[" { LEFT_BRACKET }
  | "]" { RIGHT_BRACKET }
  | "{" { LEFT_BRACE }
  | "}" { RIGHT_BRACE }
  | ":" { COLON }
  | "," { COMMA }

and read_string buf =
  parse
  | '"'       { STRING (Buffer.contents buf) }
  | '\\' '/'  { Buffer.add_char buf '/'; read_string buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '\\' 'b'  { Buffer.add_char buf '\b'; read_string buf lexbuf }
  | '\\' 'f'  { Buffer.add_char buf '\012'; read_string buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; read_string buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; read_string buf lexbuf }
  | [^ '"' '\\']+
    { Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_string buf lexbuf
    }
  | eof { raise (SyntaxError ("String is not terminated")) }
  | _ { raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) }
