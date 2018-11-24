
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | STRING of (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 12 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
  )
    | RIGHT_BRACKET
    | RIGHT_BRACE
    | NULL
    | LEFT_BRACKET
    | LEFT_BRACE
    | INT of (
# 4 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (int)
# 22 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
  )
    | FLOAT of (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (float)
# 27 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
  )
    | FALSE
    | COMMA
    | COLON
  
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

and _menhir_state = 
  | MenhirState32
  | MenhirState27
  | MenhirState20
  | MenhirState11
  | MenhirState9
  | MenhirState8
  | MenhirState4
  | MenhirState0

# 14 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
  
  open Types

# 61 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"

let rec _menhir_reduce11 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_readList -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, (v : 'tv_readList)) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 71 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 28 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
                                              ( List v )
# 75 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce12 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_readAssocList -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s), _, (v : 'tv_readAssocList)) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 87 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 29 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
                                               ( Assoc v )
# 91 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_COMMA_prog_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_prog_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_prog_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_prog_) : 'tv_separated_nonempty_list_COMMA_prog_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_prog__ = 
# 144 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( x )
# 115 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_prog__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 123 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_prog_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 131 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_prog_) : 'tv_separated_nonempty_list_COMMA_prog_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 138 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_prog_ = 
# 243 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( x :: xs )
# 144 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_prog_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_readAssoc_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_readAssoc_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState32 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_readAssoc_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_readAssoc_) : 'tv_separated_nonempty_list_COMMA_readAssoc_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_readAssoc__ = 
# 144 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( x )
# 165 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_readAssoc__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)) : 'freshtv104)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_readAssoc)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_readAssoc_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_readAssoc)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_readAssoc_) : 'tv_separated_nonempty_list_COMMA_readAssoc_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_readAssoc)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_readAssoc_ = 
# 243 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( x :: xs )
# 182 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_readAssoc_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_prog__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_prog__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_prog__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_COMMA_prog__) : 'tv_loption_separated_nonempty_list_COMMA_prog__) = _v in
    ((let _v : 'tv_readList = let elements = 
# 232 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( xs )
# 201 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    
# 32 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
                                         ( elements )
# 206 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv95) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_readList) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state) * _menhir_state * 'tv_readList) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv83 * _menhir_state) * _menhir_state * 'tv_readList) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce11 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * _menhir_state * 'tv_readList) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_readList) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_readList) = Obj.magic _menhir_stack in
            (_menhir_reduce11 _menhir_env (Obj.magic _menhir_stack) : 'freshtv90)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * 'tv_readList) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
    | _ ->
        _menhir_fail ()) : 'freshtv96)) : 'freshtv98)) : 'freshtv100)

and _menhir_goto_loption_separated_nonempty_list_COMMA_readAssoc__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_readAssoc__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_readAssoc__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_COMMA_readAssoc__) : 'tv_loption_separated_nonempty_list_COMMA_readAssoc__) = _v in
    ((let _v : 'tv_readAssocList = let elements = 
# 232 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( xs )
# 265 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    
# 35 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
                                              ( elements )
# 270 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_readAssocList) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * 'tv_readAssocList) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv65 * _menhir_state) * _menhir_state * 'tv_readAssocList) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce12 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv66)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv67 * _menhir_state) * _menhir_state * 'tv_readAssocList) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state) * _menhir_state * 'tv_readAssocList) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state) * _menhir_state * 'tv_readAssocList) = Obj.magic _menhir_stack in
            (_menhir_reduce12 _menhir_env (Obj.magic _menhir_stack) : 'freshtv72)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_readAssocList) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
    | _ ->
        _menhir_fail ()) : 'freshtv78)) : 'freshtv80)) : 'freshtv82)

and _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 319 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state * (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 329 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 333 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 339 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 343 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 348 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))), _, (value : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 352 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_readAssoc = 
# 38 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
                                   ( (id, value) )
# 358 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_readAssoc) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_readAssoc) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_readAssoc) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | STRING _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv40)
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_readAssoc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_readAssoc)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_readAssoc_ = 
# 241 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( [ x ] )
# 389 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_readAssoc_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_readAssoc) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)) : 'freshtv50)) : 'freshtv52)
    | MenhirState4 | MenhirState27 | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 404 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv53 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 414 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | FLOAT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | INT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | LEFT_BRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LEFT_BRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | NULL ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | STRING _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | TRUE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv54)
        | RIGHT_BRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv55 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 444 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 449 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_prog_ = 
# 241 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( [ x ] )
# 454 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_prog_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv56)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 464 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 473 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 479 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 484 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = _menhir_stack in
        Obj.magic _1) : 'freshtv62)) : 'freshtv64)
    | _ ->
        _menhir_fail ()

and _menhir_reduce6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _1 = () in
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 496 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 23 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
         ( Bool true )
# 500 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 507 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (v : (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 512 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
  )) ->
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 517 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 27 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
               ( String v )
# 521 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _1 = () in
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 531 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 22 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
         ( Null )
# 535 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_prog__ = 
# 142 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( [] )
# 544 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_prog__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 556 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | FLOAT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LEFT_BRACE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LEFT_BRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NULL ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | STRING _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | TRUE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | RIGHT_BRACKET ->
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | STRING _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | RIGHT_BRACE ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (int)
# 614 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce8 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (float)
# 623 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 647 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_readAssoc)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 661 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv38)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_readAssoc__ = 
# 142 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
    ( [] )
# 690 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_readAssoc__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 697 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 709 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | FLOAT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | INT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | LEFT_BRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LEFT_BRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | NULL ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | STRING _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | TRUE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 741 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_reduce8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (int)
# 749 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (v : (
# 4 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (int)
# 754 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
  )) ->
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 759 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 25 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
            ( Int v )
# 763 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (float)
# 770 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (float)
# 775 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
  )) ->
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 780 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 26 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
              ( Float v )
# 784 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _1 = () in
    let _v : (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 794 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
    ) = 
# 24 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
          ( Bool false )
# 798 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
     in
    _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v

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

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 18 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (Types.t)
# 817 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
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
    let (_menhir_stack : 'freshtv17) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        (_menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv2)
    | FLOAT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (float)
# 848 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = _v in
        (_menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv4)
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        let (_v : (
# 4 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (int)
# 858 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = _v in
        (_menhir_reduce8 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv6)
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STRING _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | RIGHT_BRACE ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv8)
    | LEFT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | FLOAT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | INT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | LEFT_BRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LEFT_BRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NULL ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | STRING _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | TRUE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | RIGHT_BRACKET ->
            _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv10)
    | NULL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        (_menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv12)
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        let (_v : (
# 6 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.mly"
       (string)
# 919 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
        )) = _v in
        (_menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v : 'freshtv14)
    | TRUE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        (_menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv18))

# 269 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
  

# 935 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-json-parser/src/parser.ml"
