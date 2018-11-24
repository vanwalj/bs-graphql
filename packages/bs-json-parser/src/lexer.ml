# 1 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
 
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

# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\242\255\243\255\244\255\245\255\246\255\247\255\248\255\
    \011\000\023\000\033\000\000\000\000\000\000\000\254\255\001\000\
    \003\000\000\000\001\000\253\255\001\000\000\000\252\255\003\000\
    \000\000\002\000\251\255\002\000\246\255\003\000\045\000\255\255\
    \248\255\249\255\250\255\251\255\252\255\253\255\254\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \006\000\005\000\255\255\255\255\255\255\255\255\255\255\001\000\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\008\000\010\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
    \255\255\255\255\255\255\000\000\255\255\255\255\000\000\255\255\
    \255\255\255\255\000\000\029\000\000\000\029\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\016\000\014\000\014\000\016\000\015\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \016\000\000\000\007\000\016\000\031\000\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\001\000\010\000\008\000\000\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\002\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\000\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\006\000\038\000\005\000\030\000\255\255\
    \000\000\023\000\000\000\000\000\000\000\022\000\011\000\026\000\
    \000\000\000\000\000\000\000\000\018\000\019\000\013\000\024\000\
    \000\000\000\000\020\000\025\000\012\000\017\000\021\000\000\000\
    \000\000\000\000\000\000\004\000\000\000\003\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\037\000\000\000\000\000\000\000\000\000\000\000\036\000\
    \000\000\000\000\000\000\035\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\034\000\000\000\000\000\000\000\033\000\
    \000\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\028\000\255\255\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\015\000\016\000\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\000\000\016\000\027\000\029\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\000\000\000\000\000\000\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\009\000\255\255\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\000\000\030\000\000\000\027\000\029\000\
    \255\255\011\000\255\255\255\255\255\255\021\000\000\000\025\000\
    \255\255\255\255\255\255\255\255\017\000\018\000\000\000\023\000\
    \255\255\255\255\012\000\024\000\000\000\013\000\020\000\255\255\
    \255\255\255\255\255\255\000\000\255\255\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\030\000\255\255\255\255\255\255\255\255\255\255\030\000\
    \255\255\255\255\255\255\030\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\030\000\255\255\255\255\255\255\030\000\
    \255\255\030\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\027\000\029\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec read lexbuf =
   __ocaml_lex_read_rec lexbuf 0
and __ocaml_lex_read_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 28 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
               ( read lexbuf )
# 140 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 1 ->
# 29 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
            ( next_line lexbuf; read lexbuf )
# 145 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 2 ->
# 30 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
           ( NULL )
# 150 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 3 ->
# 31 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
           ( TRUE )
# 155 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 4 ->
# 32 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
            ( FALSE )
# 160 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 5 ->
# 33 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( INT (int_of_string (Lexing.lexeme lexbuf)) )
# 165 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 6 ->
# 34 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
          ( FLOAT (float_of_string (Lexing.lexeme lexbuf)) )
# 170 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 7 ->
# 35 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( read_string (Buffer.create 17) lexbuf )
# 175 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 8 ->
# 36 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( LEFT_BRACKET )
# 180 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 9 ->
# 37 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( RIGHT_BRACKET )
# 185 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 10 ->
# 38 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( LEFT_BRACE )
# 190 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 11 ->
# 39 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( RIGHT_BRACE )
# 195 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 12 ->
# 40 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( COLON )
# 200 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 13 ->
# 41 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( COMMA )
# 205 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_read_rec lexbuf __ocaml_lex_state

and read_string buf lexbuf =
   __ocaml_lex_read_string_rec buf lexbuf 27
and __ocaml_lex_read_string_rec buf lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 45 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( STRING (Buffer.contents buf) )
# 217 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 1 ->
# 46 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '/'; read_string buf lexbuf )
# 222 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 2 ->
# 47 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '\\'; read_string buf lexbuf )
# 227 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 3 ->
# 48 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '\b'; read_string buf lexbuf )
# 232 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 4 ->
# 49 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '\012'; read_string buf lexbuf )
# 237 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 5 ->
# 50 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '\n'; read_string buf lexbuf )
# 242 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 6 ->
# 51 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '\r'; read_string buf lexbuf )
# 247 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 7 ->
# 52 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
              ( Buffer.add_char buf '\t'; read_string buf lexbuf )
# 252 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 8 ->
# 54 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
    ( Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_string buf lexbuf
    )
# 259 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 9 ->
# 57 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
        ( raise (SyntaxError ("String is not terminated")) )
# 264 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | 10 ->
# 58 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.mll"
      ( raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) )
# 269 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_read_string_rec buf lexbuf __ocaml_lex_state

;;

