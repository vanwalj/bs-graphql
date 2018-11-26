module MenhirBasics = struct
  exception Error

  type token =
    | TRUE
    | SUBSCRIPTION
    | STRING of string
    | SPREAD
    | RIGHT_PARENT
    | RIGHT_BRACKET
    | RIGHT_BRACE
    | QUERY
    | ON
    | NAME of string
    | MUTATION
    | LEFT_PARENT
    | LEFT_BRACKET
    | LEFT_BRACE
    | INT of int
    | FRAGMENT
    | FLOAT of float
    | FALSE
    | EQUAL
    | EOF
    | DOLLAR
    | COLON
    | BANG
end

include MenhirBasics

let _eRR = MenhirBasics.Error

type _menhir_env =
  { _menhir_lexer: Lexing.lexbuf -> token
  ; _menhir_lexbuf: Lexing.lexbuf
  ; _menhir_token: token
  ; mutable _menhir_error: bool }

and _menhir_state =
  | MenhirState91
  | MenhirState82
  | MenhirState77
  | MenhirState72
  | MenhirState67
  | MenhirState65
  | MenhirState52
  | MenhirState43
  | MenhirState32
  | MenhirState27
  | MenhirState22
  | MenhirState11
  | MenhirState6

open Types

let rec _menhir_goto_read_const_list :
    _menhir_env -> 'ttv_tail -> 'tv_read_const_list -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv345 * _menhir_state) * 'tv_read_const_list) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FLOAT _v ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | INT _v ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LEFT_BRACE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LEFT_BRACKET ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NAME _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | RIGHT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv343 * _menhir_state) * 'tv_read_const_list) =
          Obj.magic _menhir_stack
        in
        let (_menhir_s : _menhir_state) = MenhirState77 in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : ('freshtv341 * _menhir_state) * 'tv_read_const_list) =
            Obj.magic _menhir_stack
          in
          let _ : _menhir_state = _menhir_s in
          ( let (_menhir_stack, _menhir_s), (const_values : 'tv_read_const_list)
                =
              _menhir_stack
            in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_const_value = `List const_values in
            _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s
              _v
            : 'freshtv342 )
          : 'freshtv344 )
    | STRING _v ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | TRUE -> _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77
    : 'freshtv346 )

and _menhir_goto_read_const_assoc :
    _menhir_env -> 'ttv_tail -> 'tv_read_const_assoc -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv339 * _menhir_state) * 'tv_read_const_assoc) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv329 * _menhir_state) * 'tv_read_const_assoc) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : ('freshtv327 * _menhir_state) * 'tv_read_const_assoc) =
            Obj.magic _menhir_stack
          in
          ( let (_menhir_stack, _menhir_s), (const_assoc : 'tv_read_const_assoc)
                =
              _menhir_stack
            in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_const_value = `Assoc const_assoc in
            _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s
              _v
            : 'freshtv328 )
          : 'freshtv330 )
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * 'tv_read_const_assoc) =
          Obj.magic _menhir_stack
        in
        let (_v : string) = _v in
        ( let _menhir_stack = (_menhir_stack, _v) in
          let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COLON ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv331 * 'tv_read_const_assoc) * string) =
                Obj.magic _menhir_stack
              in
              ( let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82
                | FLOAT _v ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82 _v
                | INT _v ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82 _v
                | LEFT_BRACE ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82
                | LEFT_BRACKET ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82
                | NAME _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82 _v
                | STRING _v ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82 _v
                | TRUE ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82
                | _ ->
                    assert (not _menhir_env._menhir_error) ;
                    _menhir_env._menhir_error <- true ;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                      MenhirState82
                : 'freshtv332 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv333 * 'tv_read_const_assoc) * string) =
                Obj.magic _menhir_stack
              in
              (raise _eRR : 'freshtv334)
          : 'freshtv336 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv337 * _menhir_state) * 'tv_read_const_assoc) =
          Obj.magic _menhir_stack
        in
        ( let (_menhir_stack, _menhir_s), _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
          : 'freshtv338 )
    : 'freshtv340 )

and _menhir_goto_read_const_value :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_read_const_value
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  match _menhir_s with
  | MenhirState82 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv317 * 'tv_read_const_assoc) * string) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_read_const_value) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * 'tv_read_const_assoc) * string) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let ((value : 'tv_read_const_value) : 'tv_read_const_value) = _v in
        ( let (_menhir_stack, (list : 'tv_read_const_assoc)), (name : string) =
            _menhir_stack
          in
          let _3 = () in
          let _v : 'tv_read_const_assoc = (name, value) :: list in
          _menhir_goto_read_const_assoc _menhir_env _menhir_stack _v
          : 'freshtv316 )
        : 'freshtv318 )
  | MenhirState77 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv321 * 'tv_read_const_list) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_read_const_value) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * 'tv_read_const_list) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let ((value : 'tv_read_const_value) : 'tv_read_const_value) = _v in
        ( let _menhir_stack, (list : 'tv_read_const_list) = _menhir_stack in
          let _v : 'tv_read_const_list = value :: list in
          _menhir_goto_read_const_list _menhir_env _menhir_stack _v
          : 'freshtv320 )
        : 'freshtv322 )
  | MenhirState72 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_read_const_value) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323) = Obj.magic _menhir_stack in
        let _ : _menhir_state = _menhir_s in
        let ((default_value : 'tv_read_const_value) : 'tv_read_const_value) =
          _v
        in
        ( let _1 = () in
          let _v : 'tv_read_default_variable_value = Some default_value in
          _menhir_goto_read_default_variable_value _menhir_env _menhir_stack _v
          : 'freshtv324 )
        : 'freshtv326 )
  | _ -> _menhir_fail ()

and _menhir_goto_read_argument_list :
    _menhir_env -> 'ttv_tail -> 'tv_read_argument_list -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv313 * _menhir_state) * 'tv_read_argument_list)
      =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOLLAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FALSE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FLOAT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INT _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LEFT_BRACE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LEFT_BRACKET ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NAME _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RIGHT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv311 * _menhir_state) * 'tv_read_argument_list) =
          Obj.magic _menhir_stack
        in
        let (_menhir_s : _menhir_state) = MenhirState27 in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : ('freshtv309 * _menhir_state) * 'tv_read_argument_list) =
            Obj.magic _menhir_stack
          in
          let _ : _menhir_state = _menhir_s in
          ( let ( (_menhir_stack, _menhir_s)
                , (arguments_values : 'tv_read_argument_list) ) =
              _menhir_stack
            in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_argument_value = `List arguments_values in
            _menhir_goto_read_argument_value _menhir_env _menhir_stack
              _menhir_s _v
            : 'freshtv310 )
          : 'freshtv312 )
    | STRING _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | TRUE -> _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27
    : 'freshtv314 )

and _menhir_goto_read_argument_assoc :
    _menhir_env -> 'ttv_tail -> 'tv_read_argument_assoc -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv307 * _menhir_state) * 'tv_read_argument_assoc)
      =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv297 * _menhir_state) * 'tv_read_argument_assoc) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : ('freshtv295 * _menhir_state) * 'tv_read_argument_assoc) =
            Obj.magic _menhir_stack
          in
          ( let ( (_menhir_stack, _menhir_s)
                , (arguments_assoc : 'tv_read_argument_assoc) ) =
              _menhir_stack
            in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_read_argument_value = `Assoc arguments_assoc in
            _menhir_goto_read_argument_value _menhir_env _menhir_stack
              _menhir_s _v
            : 'freshtv296 )
          : 'freshtv298 )
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * 'tv_read_argument_assoc) =
          Obj.magic _menhir_stack
        in
        let (_v : string) = _v in
        ( let _menhir_stack = (_menhir_stack, _v) in
          let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COLON ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv299 * 'tv_read_argument_assoc) * string) =
                Obj.magic _menhir_stack
              in
              ( let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DOLLAR ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32
                | FALSE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32
                | FLOAT _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32 _v
                | INT _v ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32 _v
                | LEFT_BRACE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32
                | LEFT_BRACKET ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32
                | NAME _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32 _v
                | STRING _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32 _v
                | TRUE ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32
                | _ ->
                    assert (not _menhir_env._menhir_error) ;
                    _menhir_env._menhir_error <- true ;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                      MenhirState32
                : 'freshtv300 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv301 * 'tv_read_argument_assoc) * string) =
                Obj.magic _menhir_stack
              in
              (raise _eRR : 'freshtv302)
          : 'freshtv304 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv305 * _menhir_state) * 'tv_read_argument_assoc) =
          Obj.magic _menhir_stack
        in
        ( let (_menhir_stack, _menhir_s), _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
          : 'freshtv306 )
    : 'freshtv308 )

and _menhir_goto_read_argument_value :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_read_argument_value
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  match _menhir_s with
  | MenhirState32 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv285 * 'tv_read_argument_assoc) * string) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_read_argument_value) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * 'tv_read_argument_assoc) * string)
            =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let ((value : 'tv_read_argument_value) : 'tv_read_argument_value) =
          _v
        in
        ( let (_menhir_stack, (list : 'tv_read_argument_assoc)), (name : string)
              =
            _menhir_stack
          in
          let _3 = () in
          let _v : 'tv_read_argument_assoc = (name, value) :: list in
          _menhir_goto_read_argument_assoc _menhir_env _menhir_stack _v
          : 'freshtv284 )
        : 'freshtv286 )
  | MenhirState27 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv289 * 'tv_read_argument_list) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_read_argument_value) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * 'tv_read_argument_list) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let ((value : 'tv_read_argument_value) : 'tv_read_argument_value) =
          _v
        in
        ( let _menhir_stack, (list : 'tv_read_argument_list) = _menhir_stack in
          let _v : 'tv_read_argument_list = value :: list in
          _menhir_goto_read_argument_list _menhir_env _menhir_stack _v
          : 'freshtv288 )
        : 'freshtv290 )
  | MenhirState22 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv293 * 'tv_read_argument) * string) =
        Obj.magic _menhir_stack
      in
      let (_menhir_s : _menhir_state) = _menhir_s in
      let (_v : 'tv_read_argument_value) = _v in
      ( let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * 'tv_read_argument) * string) =
          Obj.magic _menhir_stack
        in
        let _ : _menhir_state = _menhir_s in
        let ((argument_value : 'tv_read_argument_value)
              : 'tv_read_argument_value) =
          _v
        in
        ( let ( (_menhir_stack, (arguments : 'tv_read_argument))
              , (argument_name : string) ) =
            _menhir_stack
          in
          let _3 = () in
          let _v : 'tv_read_argument =
            (argument_name, argument_value) :: arguments
          in
          _menhir_goto_read_argument _menhir_env _menhir_stack _v
          : 'freshtv292 )
        : 'freshtv294 )
  | _ -> _menhir_fail ()

and _menhir_goto_read_default_variable_value :
    _menhir_env -> 'ttv_tail -> 'tv_read_default_variable_value -> 'ttv_return
    =
 fun _menhir_env _menhir_stack _v ->
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : (('freshtv281 * 'tv_read_variable) * string)
          * _menhir_state
          * 'tv_read_variable_type) =
    Obj.magic _menhir_stack
  in
  let (_v : 'tv_read_default_variable_value) = _v in
  ( let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack
          : (('freshtv279 * 'tv_read_variable) * string)
            * _menhir_state
            * 'tv_read_variable_type) =
      Obj.magic _menhir_stack
    in
    let ((default_value : 'tv_read_default_variable_value)
          : 'tv_read_default_variable_value) =
      _v
    in
    ( let ( ((_menhir_stack, (list : 'tv_read_variable)), (name : string))
          , _
          , (typ : 'tv_read_variable_type) ) =
        _menhir_stack
      in
      let _4 = () in
      let _2 = () in
      let _v : 'tv_read_variable =
        Variable {name; typ; default= default_value} :: list
      in
      _menhir_goto_read_variable _menhir_env _menhir_stack _v
      : 'freshtv280 )
    : 'freshtv282 )

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_read_const_value = `Bool true in
    _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv278 )

and _menhir_run74 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : string) : string) = _v in
  ( let _v : 'tv_read_const_value = `String v in
    _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv276 )

and _menhir_run75 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : string) : string) = _v in
  ( let _v : 'tv_read_const_value = `Enum v in
    _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv274 )

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_stack = (_menhir_stack, _menhir_s) in
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
  ( let _v : 'tv_read_const_list = [] in
    _menhir_goto_read_const_list _menhir_env _menhir_stack _v
    : 'freshtv272 )

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_stack = (_menhir_stack, _menhir_s) in
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
  ( let _v : 'tv_read_const_assoc = [] in
    _menhir_goto_read_const_assoc _menhir_env _menhir_stack _v
    : 'freshtv270 )

and _menhir_run83 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> int -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : int) : int) = _v in
  ( let _v : 'tv_read_const_value = `Int v in
    _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv268 )

and _menhir_run84 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> float -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : float) : float) = _v in
  ( let _v : 'tv_read_const_value = `Float v in
    _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv266 )

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv263) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_read_const_value = `Bool false in
    _menhir_goto_read_const_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv264 )

and _menhir_run70 :
       _menhir_env
    -> 'ttv_tail * _menhir_state * 'tv_read_variable_type
    -> 'ttv_return =
 fun _menhir_env _menhir_stack ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_read_variable_type) =
    Obj.magic _menhir_stack
  in
  ( let _menhir_stack, _menhir_s, (typ : 'tv_read_variable_type) =
      _menhir_stack
    in
    let _2 = () in
    let _v : 'tv_read_variable_type = NonNullable typ in
    _menhir_goto_read_variable_type _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv262 )

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_read_argument_value = `Bool true in
    _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv260 )

and _menhir_run24 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : string) : string) = _v in
  ( let _v : 'tv_read_argument_value = `String v in
    _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv258 )

and _menhir_run25 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : string) : string) = _v in
  ( let _v : 'tv_read_argument_value = `Enum v in
    _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv256 )

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_stack = (_menhir_stack, _menhir_s) in
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv253) = Obj.magic _menhir_stack in
  ( let _v : 'tv_read_argument_list = [] in
    _menhir_goto_read_argument_list _menhir_env _menhir_stack _v
    : 'freshtv254 )

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_stack = (_menhir_stack, _menhir_s) in
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
  ( let _v : 'tv_read_argument_assoc = [] in
    _menhir_goto_read_argument_assoc _menhir_env _menhir_stack _v
    : 'freshtv252 )

and _menhir_run33 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> int -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : int) : int) = _v in
  ( let _v : 'tv_read_argument_value = `Int v in
    _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv250 )

and _menhir_run34 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> float -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv247) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((v : float) : float) = _v in
  ( let _v : 'tv_read_argument_value = `Float v in
    _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv248 )

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv245) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  ( let _1 = () in
    let _v : 'tv_read_argument_value = `Bool false in
    _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv246 )

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_stack = (_menhir_stack, _menhir_s) in
  let _menhir_env = _menhir_discard _menhir_env in
  let _tok = _menhir_env._menhir_token in
  match _tok with
  | NAME _v ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv241 * _menhir_state) =
        Obj.magic _menhir_stack
      in
      let (_v : string) = _v in
      ( let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state) =
          Obj.magic _menhir_stack
        in
        let ((name : string) : string) = _v in
        ( let _menhir_stack, _menhir_s = _menhir_stack in
          let _1 = () in
          let _v : 'tv_read_argument_value = `Variable name in
          _menhir_goto_read_argument_value _menhir_env _menhir_stack _menhir_s
            _v
          : 'freshtv240 )
        : 'freshtv242 )
  | _ ->
      assert (not _menhir_env._menhir_error) ;
      _menhir_env._menhir_error <- true ;
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv243 * _menhir_state) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv244 )

and _menhir_goto_read_variable_type :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_read_variable_type
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
  match _menhir_s with
  | MenhirState67 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv229 * _menhir_state)
              * _menhir_state
              * 'tv_read_variable_type) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG -> _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_BRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ('freshtv225 * _menhir_state)
                    * _menhir_state
                    * 'tv_read_variable_type) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv223 * _menhir_state)
                      * _menhir_state
                      * 'tv_read_variable_type) =
                Obj.magic _menhir_stack
              in
              ( let ( (_menhir_stack, _menhir_s)
                    , _
                    , (typ : 'tv_read_variable_type) ) =
                  _menhir_stack
                in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_read_variable_type = List typ in
                _menhir_goto_read_variable_type _menhir_env _menhir_stack
                  _menhir_s _v
                : 'freshtv224 )
              : 'freshtv226 )
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ('freshtv227 * _menhir_state)
                    * _menhir_state
                    * 'tv_read_variable_type) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv228 )
        : 'freshtv230 )
  | MenhirState65 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : (('freshtv237 * 'tv_read_variable) * string)
              * _menhir_state
              * 'tv_read_variable_type) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG -> _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run85 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72
              | FLOAT _v ->
                  _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72 _v
              | INT _v ->
                  _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72 _v
              | LEFT_BRACE ->
                  _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72
              | LEFT_BRACKET ->
                  _menhir_run76 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72
              | NAME _v ->
                  _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72 _v
              | STRING _v ->
                  _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72 _v
              | TRUE ->
                  _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72
              | _ ->
                  assert (not _menhir_env._menhir_error) ;
                  _menhir_env._menhir_error <- true ;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                    MenhirState72
              : 'freshtv232 )
        | DOLLAR | RIGHT_PARENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
            ( let _v : 'tv_read_default_variable_value = None in
              _menhir_goto_read_default_variable_value _menhir_env
                _menhir_stack _v
              : 'freshtv234 )
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : (('freshtv235 * 'tv_read_variable) * string)
                    * _menhir_state
                    * 'tv_read_variable_type) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv236 )
        : 'freshtv238 )
  | _ -> _menhir_fail ()

and _menhir_goto_read_argument :
    _menhir_env -> 'ttv_tail -> 'tv_read_argument -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv221 * 'tv_read_arguments) * 'tv_read_argument)
      =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * 'tv_read_argument) =
          Obj.magic _menhir_stack
        in
        let (_v : string) = _v in
        ( let _menhir_stack = (_menhir_stack, _v) in
          let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COLON ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv209 * 'tv_read_argument) * string)
                  =
                Obj.magic _menhir_stack
              in
              ( let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DOLLAR ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22
                | FALSE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22
                | FLOAT _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22 _v
                | INT _v ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22 _v
                | LEFT_BRACE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22
                | LEFT_BRACKET ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22
                | NAME _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22 _v
                | STRING _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22 _v
                | TRUE ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22
                | _ ->
                    assert (not _menhir_env._menhir_error) ;
                    _menhir_env._menhir_error <- true ;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                      MenhirState22
                : 'freshtv210 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv211 * 'tv_read_argument) * string)
                  =
                Obj.magic _menhir_stack
              in
              (raise _eRR : 'freshtv212)
          : 'freshtv214 )
    | RIGHT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv217 * 'tv_read_arguments) * 'tv_read_argument) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : ('freshtv215 * 'tv_read_arguments) * 'tv_read_argument) =
            Obj.magic _menhir_stack
          in
          ( let ( (_menhir_stack, (_1 : 'tv_read_arguments))
                , (arguments : 'tv_read_argument) ) =
              _menhir_stack
            in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_read_arguments = Some arguments in
            _menhir_goto_read_arguments _menhir_env _menhir_stack _v
            : 'freshtv216 )
          : 'freshtv218 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv219 * 'tv_read_arguments) * 'tv_read_argument) =
          Obj.magic _menhir_stack
        in
        (raise _eRR : 'freshtv220)
    : 'freshtv222 )

and _menhir_run66 :
    _menhir_env -> 'ttv_tail -> _menhir_state -> string -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_env = _menhir_discard _menhir_env in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
  let (_menhir_s : _menhir_state) = _menhir_s in
  let ((name : string) : string) = _v in
  ( let _v : 'tv_read_variable_type = Type name in
    _menhir_goto_read_variable_type _menhir_env _menhir_stack _menhir_s _v
    : 'freshtv208 )

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _menhir_stack = (_menhir_stack, _menhir_s) in
  let _menhir_env = _menhir_discard _menhir_env in
  let _tok = _menhir_env._menhir_token in
  match _tok with
  | LEFT_BRACKET ->
      _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState67
  | NAME _v ->
      _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
  | _ ->
      assert (not _menhir_env._menhir_error) ;
      _menhir_env._menhir_error <- true ;
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_goto_read_arguments :
    _menhir_env -> 'ttv_tail -> 'tv_read_arguments -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : ( ( ('freshtv205 * _menhir_state * 'tv_read_selection)
            * 'tv_read_alias )
          * string )
          * 'tv_read_arguments) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * 'tv_read_arguments) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
          ( let _v : 'tv_read_argument = [] in
            _menhir_goto_read_argument _menhir_env _menhir_stack _v
            : 'freshtv198 )
          : 'freshtv200 )
    | LEFT_BRACE | NAME _ | RIGHT_BRACE | SPREAD ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
        ( let _v : 'tv_read_sub_selection = None in
          _menhir_goto_read_sub_selection _menhir_env _menhir_stack _v
          : 'freshtv202 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ( ( ('freshtv203 * _menhir_state * 'tv_read_selection)
                  * 'tv_read_alias )
                * string )
                * 'tv_read_arguments) =
          Obj.magic _menhir_stack
        in
        ( let (((_menhir_stack, _menhir_s, _), _), _), _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
          : 'freshtv204 )
    : 'freshtv206 )

and _menhir_goto_read_variable :
    _menhir_env -> 'ttv_tail -> 'tv_read_variable -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : ('freshtv195 * 'tv_read_variables) * 'tv_read_variable)
      =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOLLAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * 'tv_read_variable) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | NAME _v ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv183 * 'tv_read_variable) =
                Obj.magic _menhir_stack
              in
              let (_v : string) = _v in
              ( let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COLON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : ('freshtv179 * 'tv_read_variable) * string) =
                      Obj.magic _menhir_stack
                    in
                    ( let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | LEFT_BRACKET ->
                          _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState65
                      | NAME _v ->
                          _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
                            MenhirState65 _v
                      | _ ->
                          assert (not _menhir_env._menhir_error) ;
                          _menhir_env._menhir_error <- true ;
                          _menhir_errorcase _menhir_env
                            (Obj.magic _menhir_stack) MenhirState65
                      : 'freshtv180 )
                | _ ->
                    assert (not _menhir_env._menhir_error) ;
                    _menhir_env._menhir_error <- true ;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : ('freshtv181 * 'tv_read_variable) * string) =
                      Obj.magic _menhir_stack
                    in
                    (raise _eRR : 'freshtv182)
                : 'freshtv184 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv185 * 'tv_read_variable) =
                Obj.magic _menhir_stack
              in
              (raise _eRR : 'freshtv186)
          : 'freshtv188 )
    | RIGHT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv191 * 'tv_read_variables) * 'tv_read_variable) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack
                : ('freshtv189 * 'tv_read_variables) * 'tv_read_variable) =
            Obj.magic _menhir_stack
          in
          ( let ( (_menhir_stack, (_1 : 'tv_read_variables))
                , (variables : 'tv_read_variable) ) =
              _menhir_stack
            in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_read_variables = Some variables in
            _menhir_goto_read_variables _menhir_env _menhir_stack _v
            : 'freshtv190 )
          : 'freshtv192 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv193 * 'tv_read_variables) * 'tv_read_variable) =
          Obj.magic _menhir_stack
        in
        (raise _eRR : 'freshtv194)
    : 'freshtv196 )

and _menhir_goto_read_alias :
    _menhir_env -> 'ttv_tail -> 'tv_read_alias -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : ('freshtv177 * _menhir_state * 'tv_read_selection) * 'tv_read_alias)
      =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv173 * _menhir_state * 'tv_read_selection)
                * 'tv_read_alias) =
          Obj.magic _menhir_stack
        in
        let (_v : string) = _v in
        ( let _menhir_stack = (_menhir_stack, _v) in
          let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COLON ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv167 * 'tv_read_alias) * string) =
                Obj.magic _menhir_stack
              in
              ( let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv165 * 'tv_read_alias) * string) =
                  Obj.magic _menhir_stack
                in
                ( let (_menhir_stack, (_1 : 'tv_read_alias)), (name : string) =
                    _menhir_stack
                  in
                  let _3 = () in
                  let _v : 'tv_read_alias = Some name in
                  _menhir_goto_read_alias _menhir_env _menhir_stack _v
                  : 'freshtv166 )
                : 'freshtv168 )
          | LEFT_BRACE | LEFT_PARENT | NAME _ | RIGHT_BRACE | SPREAD ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
              ( let _v : 'tv_read_arguments = None in
                _menhir_goto_read_arguments _menhir_env _menhir_stack _v
                : 'freshtv170 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ( ('freshtv171 * _menhir_state * 'tv_read_selection)
                      * 'tv_read_alias )
                      * string) =
                Obj.magic _menhir_stack
              in
              ( let ((_menhir_stack, _menhir_s, _), _), _ = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                  _menhir_s
                : 'freshtv172 )
          : 'freshtv174 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv175 * _menhir_state * 'tv_read_selection)
                * 'tv_read_alias) =
          Obj.magic _menhir_stack
        in
        ( let (_menhir_stack, _menhir_s, _), _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
          : 'freshtv176 )
    : 'freshtv178 )

and _menhir_goto_read_variables :
    _menhir_env -> 'ttv_tail -> 'tv_read_variables -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : ( (('freshtv163 * 'tv_read_definitions) * 'tv_read_operation_type)
          * 'tv_option_NAME_ )
          * 'tv_read_variables) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ( ( ('freshtv155 * 'tv_read_definitions)
                  * 'tv_read_operation_type )
                * 'tv_option_NAME_ )
                * 'tv_read_variables) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState91
          : 'freshtv156 )
    | LEFT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * 'tv_read_variables) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
          ( let _v : 'tv_read_variable = [] in
            _menhir_goto_read_variable _menhir_env _menhir_stack _v
            : 'freshtv158 )
          : 'freshtv160 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ( ( ('freshtv161 * 'tv_read_definitions)
                  * 'tv_read_operation_type )
                * 'tv_option_NAME_ )
                * 'tv_read_variables) =
          Obj.magic _menhir_stack
        in
        (raise _eRR : 'freshtv162)
    : 'freshtv164 )

and _menhir_fail : unit -> 'a =
 fun () ->
  Printf.fprintf stderr
    "Internal failure -- please contact the parser generator's developers.\n%!" ;
  assert false

and _menhir_goto_read_sub_selection :
    _menhir_env -> 'ttv_tail -> 'tv_read_sub_selection -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : ( ( ( ('freshtv153 * _menhir_state * 'tv_read_selection)
              * 'tv_read_alias )
            * string )
          * 'tv_read_arguments )
          * 'tv_read_sub_selection) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * 'tv_read_sub_selection) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
          : 'freshtv148 )
    | NAME _ | RIGHT_BRACE | SPREAD ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ( ( ( ('freshtv149 * _menhir_state * 'tv_read_selection)
                    * 'tv_read_alias )
                  * string )
                * 'tv_read_arguments )
                * 'tv_read_sub_selection) =
          Obj.magic _menhir_stack
        in
        ( let ( ( ( ( ( _menhir_stack
                      , _menhir_s
                      , (selection : 'tv_read_selection) )
                    , (alias : 'tv_read_alias) )
                  , (name : string) )
                , (arguments : 'tv_read_arguments) )
              , (sub_selection : 'tv_read_sub_selection) ) =
            _menhir_stack
          in
          let _v : 'tv_read_selection =
            Field {name; alias; arguments; selection= sub_selection}
            :: selection
          in
          _menhir_goto_read_selection _menhir_env _menhir_stack _menhir_s _v
          : 'freshtv150 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ( ( ( ('freshtv151 * _menhir_state * 'tv_read_selection)
                    * 'tv_read_alias )
                  * string )
                * 'tv_read_arguments )
                * 'tv_read_sub_selection) =
          Obj.magic _menhir_stack
        in
        ( let ((((_menhir_stack, _menhir_s, _), _), _), _), _ = _menhir_stack in
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
          : 'freshtv152 )
    : 'freshtv154 )

and _menhir_errorcase :
    _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s ->
  match _menhir_s with
  | MenhirState91 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ( (('freshtv121 * 'tv_read_definitions) * 'tv_read_operation_type)
              * 'tv_option_NAME_ )
              * 'tv_read_variables) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv122)
  | MenhirState82 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv123 * 'tv_read_const_assoc) * string) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv124)
  | MenhirState77 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv125 * _menhir_state) * 'tv_read_const_list)
          =
        Obj.magic _menhir_stack
      in
      ( let (_menhir_stack, _menhir_s), _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv126 )
  | MenhirState72 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
      (raise _eRR : 'freshtv128)
  | MenhirState67 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv129 * _menhir_state) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv130 )
  | MenhirState65 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv131 * 'tv_read_variable) * string) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv132)
  | MenhirState52 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : (('freshtv133 * 'tv_read_definitions) * string) * string) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv134)
  | MenhirState43 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv135 * 'tv_read_sub_selection) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv136)
  | MenhirState32 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv137 * 'tv_read_argument_assoc) * string) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv138)
  | MenhirState27 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv139 * _menhir_state) * 'tv_read_argument_list) =
        Obj.magic _menhir_stack
      in
      ( let (_menhir_stack, _menhir_s), _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv140 )
  | MenhirState22 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : ('freshtv141 * 'tv_read_argument) * string) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv142)
  | MenhirState11 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv143 * _menhir_state * 'tv_read_selection) * string) =
        Obj.magic _menhir_stack
      in
      ( let (_menhir_stack, _menhir_s, _), _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv144 )
  | MenhirState6 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv145 * 'tv_read_definitions) =
        Obj.magic _menhir_stack
      in
      (raise _eRR : 'freshtv146)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> 'ttv_return =
 fun _menhir_env _menhir_stack ->
  let _v : 'tv_read_alias = None in
  _menhir_goto_read_alias _menhir_env _menhir_stack _v

and _menhir_run8 :
       _menhir_env
    -> 'ttv_tail * _menhir_state * 'tv_read_selection
    -> 'ttv_return =
 fun _menhir_env _menhir_stack ->
  let _menhir_env = _menhir_discard _menhir_env in
  let _tok = _menhir_env._menhir_token in
  match _tok with
  | NAME _v ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      let (_v : string) = _v in
      ( let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_read_selection)
            =
          Obj.magic _menhir_stack
        in
        let ((name : string) : string) = _v in
        ( let _menhir_stack, _menhir_s, (selection : 'tv_read_selection) =
            _menhir_stack
          in
          let _2 = () in
          let _v : 'tv_read_selection = FragmentSpread {name} :: selection in
          _menhir_goto_read_selection _menhir_env _menhir_stack _menhir_s _v
          : 'freshtv106 )
        : 'freshtv108 )
  | ON ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : 'freshtv113 * _menhir_state * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            let (_v : string) = _v in
            ( let _menhir_stack = (_menhir_stack, _v) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | LEFT_BRACE ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack
                        : ('freshtv109 * _menhir_state * 'tv_read_selection)
                          * string) =
                    Obj.magic _menhir_stack
                  in
                  ( let _menhir_env = _menhir_discard _menhir_env in
                    _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)
                      MenhirState11
                    : 'freshtv110 )
              | _ ->
                  assert (not _menhir_env._menhir_error) ;
                  _menhir_env._menhir_error <- true ;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack
                        : ('freshtv111 * _menhir_state * 'tv_read_selection)
                          * string) =
                    Obj.magic _menhir_stack
                  in
                  ( let (_menhir_stack, _menhir_s, _), _ = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack)
                      _menhir_s
                    : 'freshtv112 )
              : 'freshtv114 )
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : 'freshtv115 * _menhir_state * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv116 )
        : 'freshtv118 )
  | _ ->
      assert (not _menhir_env._menhir_error) ;
      _menhir_env._menhir_error <- true ;
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
        : 'freshtv120 )

and _menhir_goto_option_NAME_ :
    _menhir_env -> 'ttv_tail -> 'tv_option_NAME_ -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : (('freshtv103 * 'tv_read_definitions) * 'tv_read_operation_type)
          * 'tv_option_NAME_) =
    Obj.magic _menhir_stack
  in
  ( let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
    ( let _v : 'tv_read_variables = None in
      _menhir_goto_read_variables _menhir_env _menhir_stack _v
      : 'freshtv102 )
    : 'freshtv104 )

and _menhir_goto_read_selection :
       _menhir_env
    -> 'ttv_tail
    -> _menhir_state
    -> 'tv_read_selection
    -> 'ttv_return =
 fun _menhir_env _menhir_stack _menhir_s _v ->
  let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
  match _menhir_s with
  | MenhirState6 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv67 * 'tv_read_definitions)
              * _menhir_state
              * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ('freshtv63 * 'tv_read_definitions)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv61 * 'tv_read_definitions)
                      * _menhir_state
                      * 'tv_read_selection) =
                Obj.magic _menhir_stack
              in
              ( let ( (_menhir_stack, (definitions : 'tv_read_definitions))
                    , _
                    , (selection : 'tv_read_selection) ) =
                  _menhir_stack
                in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_read_definitions =
                  Operation {typ= Query; selection; variables= None; name= None}
                  :: definitions
                in
                _menhir_goto_read_definitions _menhir_env _menhir_stack _v
                : 'freshtv62 )
              : 'freshtv64 )
        | SPREAD -> _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | NAME _ -> _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ('freshtv65 * 'tv_read_definitions)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv66 )
        : 'freshtv68 )
  | MenhirState11 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : (('freshtv75 * _menhir_state * 'tv_read_selection) * string)
              * _menhir_state
              * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : (('freshtv71 * _menhir_state * 'tv_read_selection) * string)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ( ('freshtv69 * _menhir_state * 'tv_read_selection)
                      * string )
                      * _menhir_state
                      * 'tv_read_selection) =
                Obj.magic _menhir_stack
              in
              ( let ( ( ( _menhir_stack
                        , _menhir_s
                        , (selection : 'tv_read_selection) )
                      , (type_name : string) )
                    , _
                    , (sub_selection : 'tv_read_selection) ) =
                  _menhir_stack
                in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_read_selection =
                  InlineFragment {type_name; selection= sub_selection}
                  :: selection
                in
                _menhir_goto_read_selection _menhir_env _menhir_stack _menhir_s
                  _v
                : 'freshtv70 )
              : 'freshtv72 )
        | SPREAD -> _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | NAME _ -> _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : (('freshtv73 * _menhir_state * 'tv_read_selection) * string)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv74 )
        : 'freshtv76 )
  | MenhirState43 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ('freshtv83 * 'tv_read_sub_selection)
              * _menhir_state
              * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ('freshtv79 * 'tv_read_sub_selection)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ('freshtv77 * 'tv_read_sub_selection)
                      * _menhir_state
                      * 'tv_read_selection) =
                Obj.magic _menhir_stack
              in
              ( let ( (_menhir_stack, (_1 : 'tv_read_sub_selection))
                    , _
                    , (selection : 'tv_read_selection) ) =
                  _menhir_stack
                in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_read_sub_selection = Some selection in
                _menhir_goto_read_sub_selection _menhir_env _menhir_stack _v
                : 'freshtv78 )
              : 'freshtv80 )
        | SPREAD -> _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | NAME _ -> _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ('freshtv81 * 'tv_read_sub_selection)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv82 )
        : 'freshtv84 )
  | MenhirState52 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ((('freshtv91 * 'tv_read_definitions) * string) * string)
              * _menhir_state
              * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ((('freshtv87 * 'tv_read_definitions) * string) * string)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ((('freshtv85 * 'tv_read_definitions) * string) * string)
                      * _menhir_state
                      * 'tv_read_selection) =
                Obj.magic _menhir_stack
              in
              ( let ( ( ( (_menhir_stack, (definitions : 'tv_read_definitions))
                        , (name : string) )
                      , (type_name : string) )
                    , _
                    , (selection : 'tv_read_selection) ) =
                  _menhir_stack
                in
                let _8 = () in
                let _6 = () in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_read_definitions =
                  Fragment {name; type_name; selection} :: definitions
                in
                _menhir_goto_read_definitions _menhir_env _menhir_stack _v
                : 'freshtv86 )
              : 'freshtv88 )
        | SPREAD -> _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | NAME _ -> _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ((('freshtv89 * 'tv_read_definitions) * string) * string)
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv90 )
        : 'freshtv92 )
  | MenhirState91 ->
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack
            : ( ( ( ('freshtv99 * 'tv_read_definitions)
                  * 'tv_read_operation_type )
                * 'tv_option_NAME_ )
              * 'tv_read_variables )
              * _menhir_state
              * 'tv_read_selection) =
        Obj.magic _menhir_stack
      in
      ( assert (not _menhir_env._menhir_error) ;
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ( ( ( ('freshtv95 * 'tv_read_definitions)
                        * 'tv_read_operation_type )
                      * 'tv_option_NAME_ )
                    * 'tv_read_variables )
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack
                    : ( ( ( ('freshtv93 * 'tv_read_definitions)
                          * 'tv_read_operation_type )
                        * 'tv_option_NAME_ )
                      * 'tv_read_variables )
                      * _menhir_state
                      * 'tv_read_selection) =
                Obj.magic _menhir_stack
              in
              ( let ( ( ( ( ( _menhir_stack
                            , (definitions : 'tv_read_definitions) )
                          , (operation_type : 'tv_read_operation_type) )
                        , (name : 'tv_option_NAME_) )
                      , (variables : 'tv_read_variables) )
                    , _
                    , (selection : 'tv_read_selection) ) =
                  _menhir_stack
                in
                let _7 = () in
                let _5 = () in
                let _v : 'tv_read_definitions =
                  Operation {typ= operation_type; selection; variables; name}
                  :: definitions
                in
                _menhir_goto_read_definitions _menhir_env _menhir_stack _v
                : 'freshtv94 )
              : 'freshtv96 )
        | SPREAD -> _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | NAME _ -> _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error) ;
            _menhir_env._menhir_error <- true ;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack
                  : ( ( ( ('freshtv97 * 'tv_read_definitions)
                        * 'tv_read_operation_type )
                      * 'tv_option_NAME_ )
                    * 'tv_read_variables )
                    * _menhir_state
                    * 'tv_read_selection) =
              Obj.magic _menhir_stack
            in
            ( let _menhir_stack, _menhir_s, _ = _menhir_stack in
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
              : 'freshtv98 )
        : 'freshtv100 )
  | _ -> _menhir_fail ()

and _menhir_goto_read_operation_type :
    _menhir_env -> 'ttv_tail -> 'tv_read_operation_type -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack
        : ('freshtv59 * 'tv_read_definitions) * 'tv_read_operation_type) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        let (_v : string) = _v in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
          let ((x : string) : string) = _v in
          ( let _v : 'tv_option_NAME_ = Some x in
            _menhir_goto_option_NAME_ _menhir_env _menhir_stack _v
            : 'freshtv52 )
          : 'freshtv54 )
    | LEFT_BRACE | LEFT_PARENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
        ( let _v : 'tv_option_NAME_ = None in
          _menhir_goto_option_NAME_ _menhir_env _menhir_stack _v
          : 'freshtv56 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack
              : ('freshtv57 * 'tv_read_definitions) * 'tv_read_operation_type)
            =
          Obj.magic _menhir_stack
        in
        (raise _eRR : 'freshtv58)
    : 'freshtv60 )

and _menhir_reduce44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return
    =
 fun _menhir_env _menhir_stack _menhir_s ->
  let _v : 'tv_read_selection = [] in
  _menhir_goto_read_selection _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_read_definitions :
    _menhir_env -> 'ttv_tail -> 'tv_read_definitions -> 'ttv_return =
 fun _menhir_env _menhir_stack _v ->
  let _menhir_stack = (_menhir_stack, _v) in
  let (_menhir_env : _menhir_env) = _menhir_env in
  let (_menhir_stack : 'freshtv49 * 'tv_read_definitions) =
    Obj.magic _menhir_stack
  in
  ( assert (not _menhir_env._menhir_error) ;
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * 'tv_read_definitions) =
          Obj.magic _menhir_stack
        in
        ( let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv11 * 'tv_read_definitions) =
            Obj.magic _menhir_stack
          in
          ( let _menhir_stack, (definitions : 'tv_read_definitions) =
              _menhir_stack
            in
            let _2 = () in
            let _v : Types.document = definitions in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9) = _menhir_stack in
            let (_v : Types.document) = _v in
            ( let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
              let (_v : Types.document) = _v in
              ( let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
                let ((_1 : Types.document) : Types.document) = _v in
                (Obj.magic _1 : 'freshtv6)
                : 'freshtv8 )
              : 'freshtv10 )
            : 'freshtv12 )
          : 'freshtv14 )
    | FRAGMENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * 'tv_read_definitions) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | NAME _v ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv27 * 'tv_read_definitions) =
                Obj.magic _menhir_stack
              in
              let (_v : string) = _v in
              ( let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : ('freshtv23 * 'tv_read_definitions) * string) =
                      Obj.magic _menhir_stack
                    in
                    ( let _menhir_env = _menhir_discard _menhir_env in
                      let _tok = _menhir_env._menhir_token in
                      match _tok with
                      | NAME _v ->
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack
                                : ('freshtv19 * 'tv_read_definitions) * string)
                              =
                            Obj.magic _menhir_stack
                          in
                          let (_v : string) = _v in
                          ( let _menhir_stack = (_menhir_stack, _v) in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | LEFT_BRACE ->
                                let (_menhir_env : _menhir_env) =
                                  _menhir_env
                                in
                                let (_menhir_stack
                                      : ( ('freshtv15 * 'tv_read_definitions)
                                        * string )
                                        * string) =
                                  Obj.magic _menhir_stack
                                in
                                ( let _menhir_env =
                                    _menhir_discard _menhir_env
                                  in
                                  _menhir_reduce44 _menhir_env
                                    (Obj.magic _menhir_stack) MenhirState52
                                  : 'freshtv16 )
                            | _ ->
                                assert (not _menhir_env._menhir_error) ;
                                _menhir_env._menhir_error <- true ;
                                let (_menhir_env : _menhir_env) =
                                  _menhir_env
                                in
                                let (_menhir_stack
                                      : ( ('freshtv17 * 'tv_read_definitions)
                                        * string )
                                        * string) =
                                  Obj.magic _menhir_stack
                                in
                                (raise _eRR : 'freshtv18)
                            : 'freshtv20 )
                      | _ ->
                          assert (not _menhir_env._menhir_error) ;
                          _menhir_env._menhir_error <- true ;
                          let (_menhir_env : _menhir_env) = _menhir_env in
                          let (_menhir_stack
                                : ('freshtv21 * 'tv_read_definitions) * string)
                              =
                            Obj.magic _menhir_stack
                          in
                          (raise _eRR : 'freshtv22)
                      : 'freshtv24 )
                | _ ->
                    assert (not _menhir_env._menhir_error) ;
                    _menhir_env._menhir_error <- true ;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack
                          : ('freshtv25 * 'tv_read_definitions) * string) =
                      Obj.magic _menhir_stack
                    in
                    (raise _eRR : 'freshtv26)
                : 'freshtv28 )
          | _ ->
              assert (not _menhir_env._menhir_error) ;
              _menhir_env._menhir_error <- true ;
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv29 * 'tv_read_definitions) =
                Obj.magic _menhir_stack
              in
              (raise _eRR : 'freshtv30)
          : 'freshtv32 )
    | LEFT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * 'tv_read_definitions) =
          Obj.magic _menhir_stack
        in
        ( let _menhir_env = _menhir_discard _menhir_env in
          _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState6
          : 'freshtv34 )
    | MUTATION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
          ( let _1 = () in
            let _v : 'tv_read_operation_type = Mutation in
            _menhir_goto_read_operation_type _menhir_env _menhir_stack _v
            : 'freshtv36 )
          : 'freshtv38 )
    | QUERY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
          ( let _1 = () in
            let _v : 'tv_read_operation_type = Query in
            _menhir_goto_read_operation_type _menhir_env _menhir_stack _v
            : 'freshtv40 )
          : 'freshtv42 )
    | SUBSCRIPTION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
        ( let _menhir_env = _menhir_discard _menhir_env in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
          ( let _1 = () in
            let _v : 'tv_read_operation_type = Subscription in
            _menhir_goto_read_operation_type _menhir_env _menhir_stack _v
            : 'freshtv44 )
          : 'freshtv46 )
    | _ ->
        assert (not _menhir_env._menhir_error) ;
        _menhir_env._menhir_error <- true ;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * 'tv_read_definitions) =
          Obj.magic _menhir_stack
        in
        (raise _eRR : 'freshtv48)
    : 'freshtv50 )

and _menhir_discard : _menhir_env -> _menhir_env =
 fun _menhir_env ->
  let lexer = _menhir_env._menhir_lexer in
  let lexbuf = _menhir_env._menhir_lexbuf in
  let _tok = lexer lexbuf in
  { _menhir_lexer= lexer
  ; _menhir_lexbuf= lexbuf
  ; _menhir_token= _tok
  ; _menhir_error= false }

and read_document : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> Types.document
    =
 fun lexer lexbuf ->
  let _menhir_env =
    let (lexer : Lexing.lexbuf -> token) = lexer in
    let (lexbuf : Lexing.lexbuf) = lexbuf in
    ( let _tok = Obj.magic () in
      { _menhir_lexer= lexer
      ; _menhir_lexbuf= lexbuf
      ; _menhir_token= _tok
      ; _menhir_error= false }
      : _menhir_env )
  in
  Obj.magic
    (let (_menhir_env : _menhir_env) = _menhir_env in
     let (_menhir_stack : 'freshtv3) =
       ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p)
     in
     ( let _menhir_env = _menhir_discard _menhir_env in
       let (_menhir_env : _menhir_env) = _menhir_env in
       let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
       ( let _v : 'tv_read_definitions = [] in
         _menhir_goto_read_definitions _menhir_env _menhir_stack _v
         : 'freshtv2 )
       : 'freshtv4 ))
