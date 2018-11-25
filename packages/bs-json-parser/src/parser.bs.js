// Generated by BUCKLESCRIPT VERSION 4.0.7, PLEASE EDIT WITH CARE
'use strict';

var Block = require("bs-platform/lib/js/block.js");
var Curry = require("bs-platform/lib/js/curry.js");
var Printf = require("bs-platform/lib/js/printf.js");
var Pervasives = require("bs-platform/lib/js/pervasives.js");
var Caml_exceptions = require("bs-platform/lib/js/caml_exceptions.js");
var Caml_builtin_exceptions = require("bs-platform/lib/js/caml_builtin_exceptions.js");

var $$Error = Caml_exceptions.create("Parser-BsJsonParser.MenhirBasics.Error");

function _menhir_reduce11(_menhir_env, _menhir_stack) {
  var match = _menhir_stack[0];
  var _v = /* List */Block.__(4, [_menhir_stack[2]]);
  return _menhir_goto_prog(_menhir_env, match[0], match[1], _v);
}

function _menhir_run12(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_reduce8(_menhir_env$1, _menhir_stack, _menhir_s, _v);
}

function _menhir_run7(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_reduce5(_menhir_env$1, _menhir_stack, _menhir_s);
}

function _menhir_reduce7(_menhir_env, _menhir_stack, _menhir_s) {
  return _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, /* Bool */Block.__(0, [false]));
}

function _menhir_run13(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_reduce9(_menhir_env$1, _menhir_stack, _menhir_s, _v);
}

function _menhir_run9(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number") {
    if (_tok === 2) {
      return _menhir_reduce3(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */4);
    } else {
      exit = 1;
    }
  } else if (_tok.tag) {
    exit = 1;
  } else {
    return _menhir_run10(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */4, _tok[0]);
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              606,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = true;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */4);
  }
  
}

function _menhir_reduce1(_menhir_env, _menhir_stack, _menhir_s) {
  return _menhir_goto_loption_separated_nonempty_list_COMMA_prog__(_menhir_env, _menhir_stack, _menhir_s, /* [] */0);
}

function _menhir_reduce10(_menhir_env, _menhir_stack, _menhir_s, v) {
  var _v = /* String */Block.__(3, [v]);
  return _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, _v);
}

function _menhir_run14(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_reduce7(_menhir_env$1, _menhir_stack, _menhir_s);
}

function _menhir_run6(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_reduce10(_menhir_env$1, _menhir_stack, _menhir_s, _v);
}

function _menhir_reduce6(_menhir_env, _menhir_stack, _menhir_s) {
  return _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, /* Bool */Block.__(0, [true]));
}

function _menhir_run8(__menhir_env, __menhir_stack, __menhir_s) {
  while(true) {
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    var _menhir_env = __menhir_env;
    var _menhir_stack$1 = /* tuple */[
      _menhir_stack,
      _menhir_s
    ];
    var _menhir_env$1 = _menhir_discard(_menhir_env);
    var _tok = _menhir_env$1[/* _menhir_token */2];
    if (typeof _tok === "number") {
      switch (_tok) {
        case 0 : 
            return _menhir_run5(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5);
        case 1 : 
            return _menhir_reduce1(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5);
        case 3 : 
            return _menhir_run7(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5);
        case 4 : 
            __menhir_s = /* MenhirState8 */5;
            __menhir_stack = _menhir_stack$1;
            __menhir_env = _menhir_env$1;
            continue ;
        case 5 : 
            return _menhir_run9(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5);
        case 6 : 
            return _menhir_run14(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5);
        default:
          if (_menhir_env$1[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    591,
                    8
                  ]
                ];
          }
          _menhir_env$1[/* _menhir_error */3] = true;
          return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5);
      }
    } else {
      switch (_tok.tag | 0) {
        case 0 : 
            return _menhir_run6(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5, _tok[0]);
        case 1 : 
            return _menhir_run12(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5, _tok[0]);
        case 2 : 
            return _menhir_run13(_menhir_env$1, _menhir_stack$1, /* MenhirState8 */5, _tok[0]);
        
      }
    }
  };
}

function _menhir_reduce5(_menhir_env, _menhir_stack, _menhir_s) {
  return _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, /* Null */0);
}

function _menhir_reduce3(_menhir_env, _menhir_stack, _menhir_s) {
  return _menhir_goto_loption_separated_nonempty_list_COMMA_readAssoc__(_menhir_env, _menhir_stack, _menhir_s, /* [] */0);
}

function _menhir_errorcase(_menhir_env, __menhir_stack, __menhir_s) {
  while(true) {
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    if (_menhir_s >= 7) {
      throw $$Error;
    } else {
      __menhir_s = _menhir_stack[1];
      __menhir_stack = _menhir_stack[0];
      continue ;
    }
  };
}

function _menhir_reduce8(_menhir_env, _menhir_stack, _menhir_s, v) {
  var _v = /* Int */Block.__(1, [v]);
  return _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, _v);
}

function _menhir_run5(_menhir_env, _menhir_stack, _menhir_s) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_reduce6(_menhir_env$1, _menhir_stack, _menhir_s);
}

function _menhir_discard(_menhir_env) {
  var lexer = _menhir_env[/* _menhir_lexer */0];
  var lexbuf = _menhir_env[/* _menhir_lexbuf */1];
  var _tok = Curry._1(lexer, lexbuf);
  return /* record */[
          /* _menhir_lexer */lexer,
          /* _menhir_lexbuf */lexbuf,
          /* _menhir_token */_tok,
          /* _menhir_error */false
        ];
}

function _menhir_reduce9(_menhir_env, _menhir_stack, _menhir_s, v) {
  var _v = /* Float */Block.__(2, [v]);
  return _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, _v);
}

function _menhir_run10(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number" && _tok >= 8) {
    var _menhir_env$2 = _menhir_discard(_menhir_env$1);
    var _tok$1 = _menhir_env$2[/* _menhir_token */2];
    if (typeof _tok$1 === "number") {
      switch (_tok$1) {
        case 0 : 
            return _menhir_run5(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3);
        case 3 : 
            return _menhir_run7(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3);
        case 4 : 
            return _menhir_run8(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3);
        case 5 : 
            return _menhir_run9(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3);
        case 6 : 
            return _menhir_run14(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3);
        default:
          if (_menhir_env$2[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    730,
                    12
                  ]
                ];
          }
          _menhir_env$2[/* _menhir_error */3] = true;
          return _menhir_errorcase(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3);
      }
    } else {
      switch (_tok$1.tag | 0) {
        case 0 : 
            return _menhir_run6(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3, _tok$1[0]);
        case 1 : 
            return _menhir_run12(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3, _tok$1[0]);
        case 2 : 
            return _menhir_run13(_menhir_env$2, _menhir_stack$1, /* MenhirState11 */3, _tok$1[0]);
        
      }
    }
  } else {
    exit = 1;
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              734,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = true;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack, _menhir_s);
  }
  
}

function _menhir_fail(param) {
  Printf.fprintf(Pervasives.stderr, /* Format */[
        /* String_literal */Block.__(11, [
            "Internal failure -- please contact the parser generator's developers.\n",
            /* Flush */Block.__(10, [/* End_of_format */0])
          ]),
        "Internal failure -- please contact the parser generator's developers.\n%!"
      ]);
  throw [
        Caml_builtin_exceptions.assert_failure,
        /* tuple */[
          "parser.ml",
          97,
          4
        ]
      ];
}

function _menhir_goto_loption_separated_nonempty_list_COMMA_readAssoc__(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  if (_menhir_s !== 4) {
    if (_menhir_s !== 0) {
      return _menhir_fail(/* () */0);
    } else {
      if (_menhir_env[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                298,
                10
              ]
            ];
      }
      var _tok = _menhir_env[/* _menhir_token */2];
      var exit = 0;
      if (typeof _tok === "number" && _tok === 2) {
        return _menhir_reduce12(_menhir_env, _menhir_stack$1);
      } else {
        exit = 1;
      }
      if (exit === 1) {
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  306,
                  12
                ]
              ];
        }
        _menhir_env[/* _menhir_error */3] = true;
        return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
      }
      
    }
  } else {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              280,
              10
            ]
          ];
    }
    var _tok$1 = _menhir_env[/* _menhir_token */2];
    var exit$1 = 0;
    if (typeof _tok$1 === "number" && _tok$1 === 2) {
      var _menhir_env$1 = _menhir_discard(_menhir_env);
      return _menhir_reduce12(_menhir_env$1, _menhir_stack$1);
    } else {
      exit$1 = 1;
    }
    if (exit$1 === 1) {
      if (_menhir_env[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                289,
                12
              ]
            ];
      }
      _menhir_env[/* _menhir_error */3] = true;
      return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
    }
    
  }
}

function _menhir_goto_prog(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  var exit = 0;
  switch (_menhir_s) {
    case 3 : 
        var _menhir_s$1 = _menhir_stack[1];
        var _menhir_stack$2 = _menhir_stack[0];
        var _v_000 = _menhir_stack[2];
        var _v$1 = /* tuple */[
          _v_000,
          _v
        ];
        var _menhir_stack$3 = /* tuple */[
          _menhir_stack$2,
          _menhir_s$1,
          _v$1
        ];
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  366,
                  10
                ]
              ];
        }
        var _tok = _menhir_env[/* _menhir_token */2];
        var exit$1 = 0;
        if (typeof _tok === "number") {
          if (_tok !== 2) {
            if (_tok !== 7) {
              exit$1 = 2;
            } else {
              var _menhir_env$1 = _menhir_discard(_menhir_env);
              var _tok$1 = _menhir_env$1[/* _menhir_token */2];
              var exit$2 = 0;
              if (typeof _tok$1 === "number" || _tok$1.tag) {
                exit$2 = 3;
              } else {
                return _menhir_run10(_menhir_env$1, _menhir_stack$3, /* MenhirState20 */2, _tok$1[0]);
              }
              if (exit$2 === 3) {
                if (_menhir_env$1[/* _menhir_error */3]) {
                  throw [
                        Caml_builtin_exceptions.assert_failure,
                        /* tuple */[
                          "parser.ml",
                          378,
                          16
                        ]
                      ];
                }
                _menhir_env$1[/* _menhir_error */3] = true;
                return _menhir_errorcase(_menhir_env$1, _menhir_stack$3, /* MenhirState20 */2);
              }
              
            }
          } else {
            var _v$2 = /* :: */[
              _v$1,
              /* [] */0
            ];
            var _menhir_env$2 = _menhir_env;
            var __menhir_stack = _menhir_stack$2;
            var __menhir_s = _menhir_s$1;
            var __v = _v$2;
            while(true) {
              var _v$3 = __v;
              var _menhir_s$2 = __menhir_s;
              var _menhir_stack$4 = __menhir_stack;
              switch (_menhir_s$2) {
                case 2 : 
                    var _v_000$1 = _menhir_stack$4[2];
                    var _v$4 = /* :: */[
                      _v_000$1,
                      _v$3
                    ];
                    __v = _v$4;
                    __menhir_s = _menhir_stack$4[1];
                    __menhir_stack = _menhir_stack$4[0];
                    continue ;
                case 0 : 
                case 4 : 
                    return _menhir_goto_loption_separated_nonempty_list_COMMA_readAssoc__(_menhir_env$2, _menhir_stack$4, _menhir_s$2, _v$3);
                case 1 : 
                case 3 : 
                case 5 : 
                case 6 : 
                case 7 : 
                    return _menhir_fail(/* () */0);
                
              }
            };
          }
        } else {
          exit$1 = 2;
        }
        if (exit$1 === 2) {
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    392,
                    12
                  ]
                ];
          }
          _menhir_env[/* _menhir_error */3] = true;
          return _menhir_errorcase(_menhir_env, _menhir_stack$2, _menhir_s$1);
        }
        break;
    case 0 : 
    case 2 : 
    case 4 : 
        return _menhir_fail(/* () */0);
    case 1 : 
    case 5 : 
    case 6 : 
        exit = 1;
        break;
    case 7 : 
        return _v;
    
  }
  if (exit === 1) {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              405,
              10
            ]
          ];
    }
    var _tok$2 = _menhir_env[/* _menhir_token */2];
    var exit$3 = 0;
    if (typeof _tok$2 === "number") {
      if (_tok$2 !== 1) {
        if (_tok$2 !== 7) {
          exit$3 = 2;
        } else {
          var _menhir_env$3 = _menhir_discard(_menhir_env);
          var _tok$3 = _menhir_env$3[/* _menhir_token */2];
          if (typeof _tok$3 === "number") {
            switch (_tok$3) {
              case 0 : 
                  return _menhir_run5(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1);
              case 3 : 
                  return _menhir_run7(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1);
              case 4 : 
                  return _menhir_run8(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1);
              case 5 : 
                  return _menhir_run9(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1);
              case 6 : 
                  return _menhir_run14(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1);
              default:
                if (_menhir_env$3[/* _menhir_error */3]) {
                  throw [
                        Caml_builtin_exceptions.assert_failure,
                        /* tuple */[
                          "parser.ml",
                          435,
                          16
                        ]
                      ];
                }
                _menhir_env$3[/* _menhir_error */3] = true;
                return _menhir_errorcase(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1);
            }
          } else {
            switch (_tok$3.tag | 0) {
              case 0 : 
                  return _menhir_run6(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1, _tok$3[0]);
              case 1 : 
                  return _menhir_run12(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1, _tok$3[0]);
              case 2 : 
                  return _menhir_run13(_menhir_env$3, _menhir_stack$1, /* MenhirState27 */1, _tok$3[0]);
              
            }
          }
        }
      } else {
        var _v$5 = /* :: */[
          _v,
          /* [] */0
        ];
        var _menhir_env$4 = _menhir_env;
        var __menhir_stack$1 = _menhir_stack;
        var __menhir_s$1 = _menhir_s;
        var __v$1 = _v$5;
        while(true) {
          var _v$6 = __v$1;
          var _menhir_s$3 = __menhir_s$1;
          var _menhir_stack$5 = __menhir_stack$1;
          switch (_menhir_s$3) {
            case 1 : 
                var _v_000$2 = _menhir_stack$5[2];
                var _v$7 = /* :: */[
                  _v_000$2,
                  _v$6
                ];
                __v$1 = _v$7;
                __menhir_s$1 = _menhir_stack$5[1];
                __menhir_stack$1 = _menhir_stack$5[0];
                continue ;
            case 5 : 
            case 6 : 
                return _menhir_goto_loption_separated_nonempty_list_COMMA_prog__(_menhir_env$4, _menhir_stack$5, _menhir_s$3, _v$6);
            case 0 : 
            case 2 : 
            case 3 : 
            case 4 : 
            case 7 : 
                return _menhir_fail(/* () */0);
            
          }
        };
      }
    } else {
      exit$3 = 2;
    }
    if (exit$3 === 2) {
      if (_menhir_env[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                457,
                12
              ]
            ];
      }
      _menhir_env[/* _menhir_error */3] = true;
      return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
    }
    
  }
  
}

function _menhir_goto_loption_separated_nonempty_list_COMMA_prog__(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  if (_menhir_s >= 5) {
    switch (_menhir_s - 5 | 0) {
      case 0 : 
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    216,
                    10
                  ]
                ];
          }
          var _tok = _menhir_env[/* _menhir_token */2];
          var exit = 0;
          if (typeof _tok === "number" && _tok === 1) {
            var _menhir_env$1 = _menhir_discard(_menhir_env);
            return _menhir_reduce11(_menhir_env$1, _menhir_stack$1);
          } else {
            exit = 1;
          }
          if (exit === 1) {
            if (_menhir_env[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      225,
                      12
                    ]
                  ];
            }
            _menhir_env[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          }
          break;
      case 1 : 
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    234,
                    10
                  ]
                ];
          }
          var _tok$1 = _menhir_env[/* _menhir_token */2];
          var exit$1 = 0;
          if (typeof _tok$1 === "number" && _tok$1 === 1) {
            return _menhir_reduce11(_menhir_env, _menhir_stack$1);
          } else {
            exit$1 = 1;
          }
          if (exit$1 === 1) {
            if (_menhir_env[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      242,
                      12
                    ]
                  ];
            }
            _menhir_env[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          }
          break;
      case 2 : 
          return _menhir_fail(/* () */0);
      
    }
  } else {
    return _menhir_fail(/* () */0);
  }
}

function _menhir_reduce12(_menhir_env, _menhir_stack) {
  var match = _menhir_stack[0];
  var _v = /* Assoc */Block.__(5, [_menhir_stack[2]]);
  return _menhir_goto_prog(_menhir_env, match[0], match[1], _v);
}

function prog(lexer, lexbuf) {
  var _menhir_env = /* record */[
    /* _menhir_lexer */lexer,
    /* _menhir_lexbuf */lexbuf,
    /* _menhir_token : () */0,
    /* _menhir_error */false
  ];
  var _menhir_stack_001 = _menhir_env[/* _menhir_lexbuf */1][/* lex_curr_p */11];
  var _menhir_stack = /* tuple */[
    /* () */0,
    _menhir_stack_001
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  if (typeof _tok === "number") {
    switch (_tok) {
      case 0 : 
          return _menhir_reduce6(_menhir_env$1, _menhir_stack, /* MenhirState0 */7);
      case 3 : 
          return _menhir_reduce5(_menhir_env$1, _menhir_stack, /* MenhirState0 */7);
      case 4 : 
          var _menhir_stack$1 = /* tuple */[
            _menhir_stack,
            /* MenhirState0 */7
          ];
          var _menhir_env$2 = _menhir_discard(_menhir_env$1);
          var _tok$1 = _menhir_env$2[/* _menhir_token */2];
          if (typeof _tok$1 === "number") {
            switch (_tok$1) {
              case 0 : 
                  return _menhir_run5(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
              case 1 : 
                  return _menhir_reduce1(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
              case 3 : 
                  return _menhir_run7(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
              case 4 : 
                  return _menhir_run8(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
              case 5 : 
                  return _menhir_run9(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
              case 6 : 
                  return _menhir_run14(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
              default:
                if (_menhir_env$2[/* _menhir_error */3]) {
                  throw [
                        Caml_builtin_exceptions.assert_failure,
                        /* tuple */[
                          "parser.ml",
                          903,
                          12
                        ]
                      ];
                }
                _menhir_env$2[/* _menhir_error */3] = true;
                return _menhir_errorcase(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6);
            }
          } else {
            switch (_tok$1.tag | 0) {
              case 0 : 
                  return _menhir_run6(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6, _tok$1[0]);
              case 1 : 
                  return _menhir_run12(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6, _tok$1[0]);
              case 2 : 
                  return _menhir_run13(_menhir_env$2, _menhir_stack$1, /* MenhirState4 */6, _tok$1[0]);
              
            }
          }
      case 5 : 
          var _menhir_stack$2 = /* tuple */[
            _menhir_stack,
            /* MenhirState0 */7
          ];
          var _menhir_env$3 = _menhir_discard(_menhir_env$1);
          var _tok$2 = _menhir_env$3[/* _menhir_token */2];
          var exit = 0;
          if (typeof _tok$2 === "number") {
            if (_tok$2 === 2) {
              return _menhir_reduce3(_menhir_env$3, _menhir_stack$2, /* MenhirState32 */0);
            } else {
              exit = 1;
            }
          } else if (_tok$2.tag) {
            exit = 1;
          } else {
            return _menhir_run10(_menhir_env$3, _menhir_stack$2, /* MenhirState32 */0, _tok$2[0]);
          }
          if (exit === 1) {
            if (_menhir_env$3[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      873,
                      12
                    ]
                  ];
            }
            _menhir_env$3[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env$3, _menhir_stack$2, /* MenhirState32 */0);
          }
          break;
      case 6 : 
          return _menhir_reduce7(_menhir_env$1, _menhir_stack, /* MenhirState0 */7);
      default:
        if (_menhir_env$1[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  927,
                  8
                ]
              ];
        }
        _menhir_env$1[/* _menhir_error */3] = true;
        return _menhir_errorcase(_menhir_env$1, _menhir_stack, /* MenhirState0 */7);
    }
  } else {
    switch (_tok.tag | 0) {
      case 0 : 
          return _menhir_reduce10(_menhir_env$1, _menhir_stack, /* MenhirState0 */7, _tok[0]);
      case 1 : 
          return _menhir_reduce8(_menhir_env$1, _menhir_stack, /* MenhirState0 */7, _tok[0]);
      case 2 : 
          return _menhir_reduce9(_menhir_env$1, _menhir_stack, /* MenhirState0 */7, _tok[0]);
      
    }
  }
}

exports.$$Error = $$Error;
exports.prog = prog;
/* No side effect */
