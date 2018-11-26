
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | RIGHT_BRACE
    | NAME of (
# 1 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (string)
# 12 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
  )
    | LEFT_BRACE
    | EOF
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state

# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
  
  open Types

# 37 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"

let rec _menhir_goto_read_selection : _menhir_env -> 'ttv_tail -> 'tv_read_selection -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv39 * 'tv_read_definitions)) * 'tv_read_selection) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        let (_v : (
# 1 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (string)
# 53 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
        let ((value : (
# 1 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (string)
# 61 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) : (
# 1 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (string)
# 65 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) = _v in
        ((let _v : 'tv_read_name = 
# 38 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
    ( value )
# 70 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27) = _menhir_stack in
        let (_v : 'tv_read_name) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * 'tv_read_selection) = Obj.magic _menhir_stack in
        let (_v : 'tv_read_name) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * 'tv_read_selection) = Obj.magic _menhir_stack in
        let ((name : 'tv_read_name) : 'tv_read_name) = _v in
        ((let (_menhir_stack, (selections : 'tv_read_selection)) = _menhir_stack in
        let _v : 'tv_read_selection = 
# 30 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
    (
      Field {
        name=name;
      }::selections
    )
# 89 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
         in
        _menhir_goto_read_selection _menhir_env _menhir_stack _v) : 'freshtv24)) : 'freshtv26)) : 'freshtv28)) : 'freshtv30)) : 'freshtv32)
    | RIGHT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35 * 'tv_read_definitions)) * 'tv_read_selection) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33 * 'tv_read_definitions)) * 'tv_read_selection) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, (definitions : 'tv_read_definitions)), (selections : 'tv_read_selection)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_read_definitions = 
# 20 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
    (
      Operation {
        typ=Query;
      }::definitions
    )
# 108 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
         in
        _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv34)) : 'freshtv36)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * 'tv_read_definitions)) * 'tv_read_selection) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv38)) : 'freshtv40)

and _menhir_goto_read_definitions : _menhir_env -> 'ttv_tail -> 'tv_read_definitions -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21 * 'tv_read_definitions) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, (definitions : 'tv_read_definitions)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 10 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (Types.document)
# 136 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        ) = 
# 14 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
                                       ( definitions )
# 140 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = _menhir_stack in
        let (_v : (
# 10 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (Types.document)
# 147 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (Types.document)
# 154 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let ((_1 : (
# 10 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (Types.document)
# 161 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) : (
# 10 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (Types.document)
# 165 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        ((let _v : 'tv_read_selection = 
# 27 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
    ( [] )
# 177 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
         in
        _menhir_goto_read_selection _menhir_env _menhir_stack _v) : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv20)) : 'freshtv22)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and read_document : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 10 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
       (Types.document)
# 202 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
    ((let _v : 'tv_read_definitions = 
# 17 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.mly"
    ( [] )
# 224 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
     in
    _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 269 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
  

# 231 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-query-parser/src/parser.ml"
