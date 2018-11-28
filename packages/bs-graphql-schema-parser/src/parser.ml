
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TYPE
    | SCALAR
    | RIGHT_PARENT
    | RIGHT_BRACKET
    | RIGHT_BRACE
    | NAME of (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 16 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
  )
    | LEFT_PARENT
    | LEFT_BRACKET
    | LEFT_BRACE
    | INPUT
    | EXTENDS
    | EOF
    | COLON
    | BANG
    | AT
  
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
  | MenhirState36
  | MenhirState32
  | MenhirState23
  | MenhirState17
  | MenhirState15
  | MenhirState4

# 17 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
  
  open Types

# 54 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"

let rec _menhir_goto_read_directives : _menhir_env -> 'ttv_tail -> 'tv_read_directives -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv165 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 63 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
    )) * 'tv_read_field_arguments)) * _menhir_state * 'tv_read_type) * 'tv_read_directives) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * 'tv_read_directives) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * 'tv_read_directives)) = Obj.magic _menhir_stack in
            let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 80 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * 'tv_read_directives)) = Obj.magic _menhir_stack in
            let ((directive : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 88 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 92 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = _v in
            ((let (_menhir_stack, (directives : 'tv_read_directives)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_read_directives = 
# 108 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( directive::directives )
# 99 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_directives _menhir_env _menhir_stack _v) : 'freshtv148)) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * 'tv_read_directives)) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv152)) : 'freshtv154)
    | NAME _ | RIGHT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 113 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * 'tv_read_field_arguments)) * _menhir_state * 'tv_read_type) * 'tv_read_directives) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, (name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 118 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        ))), (arguments : 'tv_read_field_arguments)), _, (typ : 'tv_read_type)), (directives : 'tv_read_directives)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_read_field = 
# 79 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( 
      { 
        name= name; 
        arguments= arguments; 
        typ= typ; 
        directives= directives 
      }
    )
# 131 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159) = _menhir_stack in
        let (_v : 'tv_read_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * 'tv_read_fields) = Obj.magic _menhir_stack in
        let (_v : 'tv_read_field) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * 'tv_read_fields) = Obj.magic _menhir_stack in
        let ((field : 'tv_read_field) : 'tv_read_field) = _v in
        ((let (_menhir_stack, (fields : 'tv_read_fields)) = _menhir_stack in
        let _v : 'tv_read_fields = 
# 71 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( field::fields )
# 146 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        _menhir_goto_read_fields _menhir_env _menhir_stack _v) : 'freshtv156)) : 'freshtv158)) : 'freshtv160)) : 'freshtv162)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv163 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 156 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * 'tv_read_field_arguments)) * _menhir_state * 'tv_read_type) * 'tv_read_directives) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_read_type -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (typ : 'tv_read_type)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_read_type = 
# 112 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
                         ( NonNullable typ )
# 171 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
     in
    _menhir_goto_read_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)

and _menhir_goto_read_type : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_type -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_BRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv119 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (typ : 'tv_read_type)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_type = 
# 111 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
                                               ( List typ )
# 199 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv123 * _menhir_state) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 214 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        ))) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | NAME _ | RIGHT_PARENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv133 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 226 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            ))) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 231 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            ))), _, (typ : 'tv_read_type)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_read_argument = 
# 102 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( (name, typ) )
# 237 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131) = _menhir_stack in
            let (_v : 'tv_read_argument) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv129 * 'tv_read_argument_list) = Obj.magic _menhir_stack in
            let (_v : 'tv_read_argument) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv127 * 'tv_read_argument_list) = Obj.magic _menhir_stack in
            let ((argument : 'tv_read_argument) : 'tv_read_argument) = _v in
            ((let (_menhir_stack, (list : 'tv_read_argument_list)) = _menhir_stack in
            let _v : 'tv_read_argument_list = 
# 98 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( argument::list )
# 252 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_argument_list _menhir_env _menhir_stack _v) : 'freshtv128)) : 'freshtv130)) : 'freshtv132)) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 262 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            ))) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv143 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 271 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * 'tv_read_field_arguments)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AT | NAME _ | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
            ((let _v : 'tv_read_directives = 
# 105 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( [] )
# 284 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_directives _menhir_env _menhir_stack _v) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv141 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 294 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * 'tv_read_field_arguments)) * _menhir_state * 'tv_read_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | _ ->
        _menhir_fail ()

and _menhir_goto_read_argument_list : _menhir_env -> 'ttv_tail -> 'tv_read_argument_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv117 * 'tv_read_field_arguments)) * 'tv_read_argument_list) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 315 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 326 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_BRACKET ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | NAME _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv107 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 346 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv108)) : 'freshtv110)
    | RIGHT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * 'tv_read_field_arguments)) * 'tv_read_argument_list) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * 'tv_read_field_arguments)) * 'tv_read_argument_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, (_1 : 'tv_read_field_arguments)), (arguments : 'tv_read_argument_list)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_read_field_arguments = 
# 92 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( arguments )
# 361 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        _menhir_goto_read_field_arguments _menhir_env _menhir_stack _v) : 'freshtv112)) : 'freshtv114)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * 'tv_read_field_arguments)) * 'tv_read_argument_list) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv116)) : 'freshtv118)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 374 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 384 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
    )) : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 388 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
    )) = _v in
    ((let _v : 'tv_read_type = 
# 113 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
                ( Type name )
# 393 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
     in
    _menhir_goto_read_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACKET ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NAME _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_goto_read_field_arguments : _menhir_env -> 'ttv_tail -> 'tv_read_field_arguments -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv101 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 419 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
    )) * 'tv_read_field_arguments) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 429 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * 'tv_read_field_arguments) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACKET ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NAME _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv94)
    | LEFT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * 'tv_read_field_arguments) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
        ((let _v : 'tv_read_argument_list = 
# 95 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( [] )
# 451 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        _menhir_goto_read_argument_list _menhir_env _menhir_stack _v) : 'freshtv96)) : 'freshtv98)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 461 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * 'tv_read_field_arguments) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv100)) : 'freshtv102)

and _menhir_goto_read_fields : _menhir_env -> 'ttv_tail -> 'tv_read_fields -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_read_field_list)) * 'tv_read_fields) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 479 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
        ((let _v : 'tv_read_field_arguments = 
# 89 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( [] )
# 488 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        _menhir_goto_read_field_arguments _menhir_env _menhir_stack _v) : 'freshtv82)) : 'freshtv84)
    | RIGHT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_read_field_list)) * 'tv_read_fields) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_read_field_list)) * 'tv_read_fields) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_read_field_list)), (fields : 'tv_read_fields)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_read_field_list = 
# 66 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( fields )
# 503 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        _menhir_goto_read_field_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)) : 'freshtv88)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_read_field_list)) * 'tv_read_fields) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * 'tv_read_definitions))) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 527 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 535 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv72)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 543 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * 'tv_read_field_arguments)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 556 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 564 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv80)

and _menhir_run6 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_read_field_list -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
    ((let _v : 'tv_read_fields = 
# 69 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( [] )
# 576 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
     in
    _menhir_goto_read_fields _menhir_env _menhir_stack _v) : 'freshtv68)

and _menhir_goto_read_field_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_read_field_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 589 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
        | EOF | EXTENDS | INPUT | SCALAR | TYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv49 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 601 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (definitions : 'tv_read_definitions)), (name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 606 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            ))), _, (fields : 'tv_read_field_list)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_read_definitions = 
# 32 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    (
      TypeDefinition {
        name= name;
        fields= fields
      }::definitions
    )
# 617 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv50)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv51 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 627 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 636 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
        | EOF | EXTENDS | INPUT | SCALAR | TYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv55 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 648 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (definitions : 'tv_read_definitions)), (name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 653 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            ))), _, (fields : 'tv_read_field_list)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_read_definitions = 
# 56 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    (
      InputDefinition {
        name= name;
        fields= fields
      }::definitions
    )
# 664 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv56)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv57 * 'tv_read_definitions)) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 674 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * 'tv_read_definitions))) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 683 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
        | EOF | EXTENDS | INPUT | SCALAR | TYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv61 * 'tv_read_definitions))) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 695 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (definitions : 'tv_read_definitions)), (name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 700 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            ))), _, (fields : 'tv_read_field_list)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_read_definitions = 
# 42 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    (
      TypeExtensionDefinition {
        name= name;
        fields= fields
      }::definitions
    )
# 712 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv62)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv63 * 'tv_read_definitions))) * (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 722 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) * _menhir_state * 'tv_read_field_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)
    | _ ->
        _menhir_fail ()

and _menhir_reduce14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_read_field_list = 
# 64 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( [] )
# 734 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
     in
    _menhir_goto_read_field_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_read_definitions : _menhir_env -> 'ttv_tail -> 'tv_read_definitions -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv47 * 'tv_read_definitions) = Obj.magic _menhir_stack in
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
# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (Types.schema)
# 756 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        ) = 
# 25 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
                                       ( definitions )
# 760 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = _menhir_stack in
        let (_v : (
# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (Types.schema)
# 767 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_v : (
# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (Types.schema)
# 774 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let ((_1 : (
# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (Types.schema)
# 781 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) : (
# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (Types.schema)
# 785 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)
    | EXTENDS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NAME _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv15 * 'tv_read_definitions))) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 806 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv16)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv17 * 'tv_read_definitions))) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv18)) : 'freshtv20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv21 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv22)) : 'freshtv24)
    | INPUT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv25 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 835 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv26)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv28)) : 'freshtv30)
    | SCALAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 858 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            let ((name : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 866 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 870 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = _v in
            ((let (_menhir_stack, (definitions : 'tv_read_definitions)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_read_definitions = 
# 50 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    (
      (Scalar name)::definitions
    )
# 879 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
             in
            _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv32)) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv36)) : 'freshtv38)
    | TYPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            let (_v : (
# 5 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (string)
# 900 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv40)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * 'tv_read_definitions)) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv42)) : 'freshtv44)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * 'tv_read_definitions) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv46)) : 'freshtv48)

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

and read_schema : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 21 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
       (Types.schema)
# 933 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
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
# 28 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.mly"
    ( [] )
# 955 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
     in
    _menhir_goto_read_definitions _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 269 "/Users/jordan/.opam/4.07.1/lib/menhir/standard.mly"
  

# 962 "/Users/jordan/Documents/Playground/bs-graphql/packages/bs-graphql-schema-parser/src/parser.ml"
