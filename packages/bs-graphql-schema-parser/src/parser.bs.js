// Generated by BUCKLESCRIPT VERSION 4.0.7, PLEASE EDIT WITH CARE
'use strict';

var Block = require("bs-platform/lib/js/block.js");
var Curry = require("bs-platform/lib/js/curry.js");
var Printf = require("bs-platform/lib/js/printf.js");
var Pervasives = require("bs-platform/lib/js/pervasives.js");
var Caml_exceptions = require("bs-platform/lib/js/caml_exceptions.js");
var Caml_builtin_exceptions = require("bs-platform/lib/js/caml_builtin_exceptions.js");

var $$Error = Caml_exceptions.create("Parser-BsGraphqlSchemaParser.MenhirBasics.Error");

function _menhir_goto_read_directives(__menhir_env, _menhir_stack, __v) {
  while(true) {
    var _v = __v;
    var _menhir_env = __menhir_env;
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              64,
              6
            ]
          ];
    }
    var _tok = _menhir_env[/* _menhir_token */2];
    var exit = 0;
    if (typeof _tok === "number" && _tok !== 4) {
      if (_tok >= 13) {
        var _menhir_env$1 = _menhir_discard(_menhir_env);
        var _tok$1 = _menhir_env$1[/* _menhir_token */2];
        if (typeof _tok$1 === "number") {
          if (_menhir_env$1[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    102,
                    12
                  ]
                ];
          }
          _menhir_env$1[/* _menhir_error */3] = true;
          throw $$Error;
        } else {
          var _menhir_env$2 = _menhir_discard(_menhir_env$1);
          var _v_000 = _tok$1[0];
          var _v$1 = /* :: */[
            _v_000,
            _v
          ];
          __v = _v$1;
          __menhir_env = _menhir_env$2;
          continue ;
        }
      } else {
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  149,
                  8
                ]
              ];
        }
        _menhir_env[/* _menhir_error */3] = true;
        return _menhir_errorcase(_menhir_env, _menhir_stack[0], _menhir_stack[1]);
      }
    } else {
      exit = 1;
    }
    if (exit === 1) {
      var match = _menhir_stack[0];
      var match$1 = match[0];
      var _menhir_stack$1 = match$1[0];
      var _v_000$1 = /* name */match$1[1];
      var _v_001 = /* arguments */match[1];
      var _v_002 = /* typ */_menhir_stack[2];
      var _v$2 = /* record */[
        _v_000$1,
        _v_001,
        _v_002,
        /* directives */_v
      ];
      var _v_001$1 = _menhir_stack$1[1];
      var _v$3 = /* :: */[
        _v$2,
        _v_001$1
      ];
      return _menhir_goto_read_fields(_menhir_env, _menhir_stack$1[0], _v$3);
    }
    
  };
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

function _menhir_goto_read_type(__menhir_env, __menhir_stack, __menhir_s, __v) {
  while(true) {
    var _v = __v;
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    var _menhir_env = __menhir_env;
    var _menhir_stack$1 = /* tuple */[
      _menhir_stack,
      _menhir_s,
      _v
    ];
    switch (_menhir_s) {
      case 2 : 
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    272,
                    10
                  ]
                ];
          }
          var _tok = _menhir_env[/* _menhir_token */2];
          var exit = 0;
          if (typeof _tok === "number") {
            if (_tok >= 4) {
              switch (_tok - 4 | 0) {
                case 1 : 
                case 2 : 
                case 3 : 
                case 4 : 
                case 5 : 
                case 6 : 
                case 7 : 
                    exit = 1;
                    break;
                case 8 : 
                    return _menhir_run20(_menhir_env, _menhir_stack$1);
                case 0 : 
                case 9 : 
                    return _menhir_goto_read_directives(_menhir_env, _menhir_stack$1, /* [] */0);
                
              }
            } else {
              exit = 1;
            }
          } else {
            return _menhir_goto_read_directives(_menhir_env, _menhir_stack$1, /* [] */0);
          }
          if (exit === 1) {
            if (_menhir_env[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      287,
                      12
                    ]
                  ];
            }
            _menhir_env[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          }
          break;
      case 3 : 
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    181,
                    10
                  ]
                ];
          }
          var _tok$1 = _menhir_env[/* _menhir_token */2];
          var exit$1 = 0;
          if (typeof _tok$1 === "number") {
            if (_tok$1 !== 3) {
              if (_tok$1 !== 12) {
                exit$1 = 1;
              } else {
                return _menhir_run20(_menhir_env, _menhir_stack$1);
              }
            } else {
              var _menhir_env$1 = _menhir_discard(_menhir_env);
              var _v$1 = /* List */Block.__(2, [_v]);
              __v = _v$1;
              __menhir_s = _menhir_stack[1];
              __menhir_stack = _menhir_stack[0];
              __menhir_env = _menhir_env$1;
              continue ;
            }
          } else {
            exit$1 = 1;
          }
          if (exit$1 === 1) {
            if (_menhir_env[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      202,
                      12
                    ]
                  ];
            }
            _menhir_env[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          }
          break;
      case 4 : 
          if (_menhir_env[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    215,
                    10
                  ]
                ];
          }
          var _tok$2 = _menhir_env[/* _menhir_token */2];
          var exit$2 = 0;
          if (typeof _tok$2 === "number" && _tok$2 !== 2) {
            if (_tok$2 !== 12) {
              if (_menhir_env[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        255,
                        12
                      ]
                    ];
              }
              _menhir_env[/* _menhir_error */3] = true;
              return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
            } else {
              return _menhir_run20(_menhir_env, _menhir_stack$1);
            }
          } else {
            exit$2 = 1;
          }
          if (exit$2 === 1) {
            var _menhir_stack$2 = _menhir_stack[0];
            var _v_000 = _menhir_stack[1];
            var _v$2 = /* tuple */[
              _v_000,
              _v
            ];
            var _v_001 = _menhir_stack$2[1];
            var _v$3 = /* :: */[
              _v$2,
              _v_001
            ];
            return _menhir_goto_read_argument_list(_menhir_env, _menhir_stack$2[0], _v$3);
          }
          break;
      case 0 : 
      case 1 : 
      case 5 : 
          return _menhir_fail(/* () */0);
      
    }
  };
}

function _menhir_goto_read_field_list(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  switch (_menhir_s) {
    case 0 : 
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  684,
                  10
                ]
              ];
        }
        var _tok = _menhir_env[/* _menhir_token */2];
        var exit = 0;
        if (typeof _tok === "number") {
          if (_tok >= 2) {
            switch (_tok - 2 | 0) {
              case 5 : 
                  return _menhir_run6(_menhir_env, _menhir_stack$1);
              case 6 : 
              case 7 : 
              case 8 : 
                  exit = 2;
                  break;
              case 0 : 
              case 1 : 
              case 2 : 
              case 3 : 
              case 4 : 
              case 9 : 
              case 10 : 
              case 11 : 
                  exit = 1;
                  break;
              
            }
          } else {
            exit = 2;
          }
        } else {
          exit = 1;
        }
        switch (exit) {
          case 1 : 
              if (_menhir_env[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        715,
                        12
                      ]
                    ];
              }
              _menhir_env[/* _menhir_error */3] = true;
              return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          case 2 : 
              var match = _menhir_stack[0];
              var _v_000 = /* TypeExtensionDefinition */Block.__(1, [/* record */[
                    /* name */_menhir_stack[1],
                    /* fields */_v
                  ]]);
              var _v_001 = match[1];
              var _v$1 = /* :: */[
                _v_000,
                _v_001
              ];
              return _menhir_goto_read_definitions(_menhir_env, match[0], _v$1);
          
        }
        break;
    case 1 : 
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  637,
                  10
                ]
              ];
        }
        var _tok$1 = _menhir_env[/* _menhir_token */2];
        var exit$1 = 0;
        if (typeof _tok$1 === "number") {
          if (_tok$1 >= 2) {
            switch (_tok$1 - 2 | 0) {
              case 5 : 
                  return _menhir_run6(_menhir_env, _menhir_stack$1);
              case 6 : 
              case 7 : 
              case 8 : 
                  exit$1 = 2;
                  break;
              case 0 : 
              case 1 : 
              case 2 : 
              case 3 : 
              case 4 : 
              case 9 : 
              case 10 : 
              case 11 : 
                  exit$1 = 1;
                  break;
              
            }
          } else {
            exit$1 = 2;
          }
        } else {
          exit$1 = 1;
        }
        switch (exit$1) {
          case 1 : 
              if (_menhir_env[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        667,
                        12
                      ]
                    ];
              }
              _menhir_env[/* _menhir_error */3] = true;
              return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          case 2 : 
              var match$1 = _menhir_stack[0];
              var _v_000$1 = /* InputDefinition */Block.__(3, [/* record */[
                    /* name */_menhir_stack[1],
                    /* fields */_v
                  ]]);
              var _v_001$1 = match$1[1];
              var _v$2 = /* :: */[
                _v_000$1,
                _v_001$1
              ];
              return _menhir_goto_read_definitions(_menhir_env, match$1[0], _v$2);
          
        }
        break;
    case 2 : 
    case 3 : 
    case 4 : 
        return _menhir_fail(/* () */0);
    case 5 : 
        if (_menhir_env[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  590,
                  10
                ]
              ];
        }
        var _tok$2 = _menhir_env[/* _menhir_token */2];
        var exit$2 = 0;
        if (typeof _tok$2 === "number") {
          if (_tok$2 >= 2) {
            switch (_tok$2 - 2 | 0) {
              case 5 : 
                  return _menhir_run6(_menhir_env, _menhir_stack$1);
              case 6 : 
              case 7 : 
              case 8 : 
                  exit$2 = 2;
                  break;
              case 0 : 
              case 1 : 
              case 2 : 
              case 3 : 
              case 4 : 
              case 9 : 
              case 10 : 
              case 11 : 
                  exit$2 = 1;
                  break;
              
            }
          } else {
            exit$2 = 2;
          }
        } else {
          exit$2 = 1;
        }
        switch (exit$2) {
          case 1 : 
              if (_menhir_env[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        620,
                        12
                      ]
                    ];
              }
              _menhir_env[/* _menhir_error */3] = true;
              return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
          case 2 : 
              var match$2 = _menhir_stack[0];
              var _v_000$2 = /* TypeDefinition */Block.__(0, [/* record */[
                    /* name */_menhir_stack[1],
                    /* fields */_v
                  ]]);
              var _v_001$2 = match$2[1];
              var _v$3 = /* :: */[
                _v_000$2,
                _v_001$2
              ];
              return _menhir_goto_read_definitions(_menhir_env, match$2[0], _v$3);
          
        }
        break;
    
  }
}

function _menhir_errorcase(_menhir_env, __menhir_stack, __menhir_s) {
  while(true) {
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    if (_menhir_s !== 3) {
      throw $$Error;
    } else {
      __menhir_s = _menhir_stack[1];
      __menhir_stack = _menhir_stack[0];
      continue ;
    }
  };
}

function _menhir_goto_read_field_arguments(_menhir_env, _menhir_stack, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          /* tuple */[
            "parser.ml",
            420,
            6
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number") {
    if (_tok !== 5) {
      if (_tok !== 11) {
        exit = 1;
      } else {
        var _menhir_env$1 = _menhir_discard(_menhir_env);
        var _tok$1 = _menhir_env$1[/* _menhir_token */2];
        if (typeof _tok$1 === "number") {
          if (_tok$1 !== 6) {
            if (_menhir_env$1[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      438,
                      12
                    ]
                  ];
            }
            _menhir_env$1[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState23 */2);
          } else {
            return _menhir_run17(_menhir_env$1, _menhir_stack$1, /* MenhirState23 */2);
          }
        } else {
          return _menhir_run16(_menhir_env$1, _menhir_stack$1, /* MenhirState23 */2, _tok$1[0]);
        }
      }
    } else {
      var _menhir_env$2 = _menhir_discard(_menhir_env);
      return _menhir_goto_read_argument_list(_menhir_env$2, _menhir_stack$1, /* [] */0);
    }
  } else {
    exit = 1;
  }
  if (exit === 1) {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              454,
              8
            ]
          ];
    }
    _menhir_env[/* _menhir_error */3] = true;
    throw $$Error;
  }
  
}

function _menhir_goto_read_argument_list(_menhir_env, _menhir_stack, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          /* tuple */[
            "parser.ml",
            305,
            6
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  if (typeof _tok === "number") {
    if (_tok !== 2) {
      if (_menhir_env[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                364,
                8
              ]
            ];
      }
      _menhir_env[/* _menhir_error */3] = true;
      throw $$Error;
    } else {
      var _menhir_env$1 = _menhir_discard(_menhir_env);
      return _menhir_goto_read_field_arguments(_menhir_env$1, _menhir_stack[0], _v);
    }
  } else {
    var _menhir_stack_001 = _tok[0];
    var _menhir_stack$2 = /* tuple */[
      _menhir_stack$1,
      _menhir_stack_001
    ];
    var _menhir_env$2 = _menhir_discard(_menhir_env);
    var _tok$1 = _menhir_env$2[/* _menhir_token */2];
    var exit = 0;
    if (typeof _tok$1 === "number" && _tok$1 === 11) {
      var _menhir_env$3 = _menhir_discard(_menhir_env$2);
      var _tok$2 = _menhir_env$3[/* _menhir_token */2];
      if (typeof _tok$2 === "number") {
        if (_tok$2 !== 6) {
          if (_menhir_env$3[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    335,
                    16
                  ]
                ];
          }
          _menhir_env$3[/* _menhir_error */3] = true;
          return _menhir_errorcase(_menhir_env$3, _menhir_stack$2, /* MenhirState15 */4);
        } else {
          return _menhir_run17(_menhir_env$3, _menhir_stack$2, /* MenhirState15 */4);
        }
      } else {
        return _menhir_run16(_menhir_env$3, _menhir_stack$2, /* MenhirState15 */4, _tok$2[0]);
      }
    } else {
      exit = 1;
    }
    if (exit === 1) {
      if (_menhir_env$2[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                339,
                12
              ]
            ];
      }
      _menhir_env$2[/* _menhir_error */3] = true;
      throw $$Error;
    }
    
  }
}

function _menhir_run16(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _v$1 = /* Type */Block.__(0, [_v]);
  return _menhir_goto_read_type(_menhir_env$1, _menhir_stack, _menhir_s, _v$1);
}

function _menhir_run17(__menhir_env, __menhir_stack, __menhir_s) {
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
      if (_tok !== 6) {
        if (_menhir_env$1[/* _menhir_error */3]) {
          throw [
                Caml_builtin_exceptions.assert_failure,
                /* tuple */[
                  "parser.ml",
                  407,
                  8
                ]
              ];
        }
        _menhir_env$1[/* _menhir_error */3] = true;
        return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState17 */3);
      } else {
        __menhir_s = /* MenhirState17 */3;
        __menhir_stack = _menhir_stack$1;
        __menhir_env = _menhir_env$1;
        continue ;
      }
    } else {
      return _menhir_run16(_menhir_env$1, _menhir_stack$1, /* MenhirState17 */3, _tok[0]);
    }
  };
}

function _menhir_goto_read_definitions(__menhir_env, _menhir_stack, __v) {
  while(true) {
    var _v = __v;
    var _menhir_env = __menhir_env;
    var _menhir_stack$1 = /* tuple */[
      _menhir_stack,
      _v
    ];
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              742,
              6
            ]
          ];
    }
    var _tok = _menhir_env[/* _menhir_token */2];
    var exit = 0;
    if (typeof _tok === "number") {
      switch (_tok) {
        case 0 : 
            var _menhir_env$1 = _menhir_discard(_menhir_env);
            var _tok$1 = _menhir_env$1[/* _menhir_token */2];
            if (typeof _tok$1 === "number") {
              if (_menhir_env$1[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        905,
                        12
                      ]
                    ];
              }
              _menhir_env$1[/* _menhir_error */3] = true;
              throw $$Error;
            } else {
              var _menhir_stack_001 = _tok$1[0];
              var _menhir_stack$2 = /* tuple */[
                _menhir_stack$1,
                _menhir_stack_001
              ];
              var _menhir_env$2 = _menhir_discard(_menhir_env$1);
              return _menhir_reduce14(_menhir_env$2, _menhir_stack$2, /* MenhirState4 */5);
            }
        case 1 : 
            var _menhir_env$3 = _menhir_discard(_menhir_env);
            var _tok$2 = _menhir_env$3[/* _menhir_token */2];
            if (typeof _tok$2 === "number") {
              if (_menhir_env$3[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        882,
                        12
                      ]
                    ];
              }
              _menhir_env$3[/* _menhir_error */3] = true;
              throw $$Error;
            } else {
              var _menhir_env$4 = _menhir_discard(_menhir_env$3);
              var _v_000 = /* Scalar */Block.__(2, [_tok$2[0]]);
              var _v$1 = /* :: */[
                _v_000,
                _v
              ];
              __v = _v$1;
              __menhir_env = _menhir_env$4;
              continue ;
            }
        case 8 : 
            var _menhir_env$5 = _menhir_discard(_menhir_env);
            var _tok$3 = _menhir_env$5[/* _menhir_token */2];
            if (typeof _tok$3 === "number") {
              if (_menhir_env$5[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        840,
                        12
                      ]
                    ];
              }
              _menhir_env$5[/* _menhir_error */3] = true;
              throw $$Error;
            } else {
              var _menhir_stack_001$1 = _tok$3[0];
              var _menhir_stack$3 = /* tuple */[
                _menhir_stack$1,
                _menhir_stack_001$1
              ];
              var _menhir_env$6 = _menhir_discard(_menhir_env$5);
              return _menhir_reduce14(_menhir_env$6, _menhir_stack$3, /* MenhirState32 */1);
            }
        case 9 : 
            var _menhir_env$7 = _menhir_discard(_menhir_env);
            var _tok$4 = _menhir_env$7[/* _menhir_token */2];
            var exit$1 = 0;
            if (typeof _tok$4 === "number" && _tok$4 === 0) {
              var _menhir_env$8 = _menhir_discard(_menhir_env$7);
              var _tok$5 = _menhir_env$8[/* _menhir_token */2];
              if (typeof _tok$5 === "number") {
                if (_menhir_env$8[/* _menhir_error */3]) {
                  throw [
                        Caml_builtin_exceptions.assert_failure,
                        /* tuple */[
                          "parser.ml",
                          811,
                          16
                        ]
                      ];
                }
                _menhir_env$8[/* _menhir_error */3] = true;
                throw $$Error;
              } else {
                var _menhir_stack_001$2 = _tok$5[0];
                var _menhir_stack$4 = /* tuple */[
                  _menhir_stack$1,
                  _menhir_stack_001$2
                ];
                var _menhir_env$9 = _menhir_discard(_menhir_env$8);
                return _menhir_reduce14(_menhir_env$9, _menhir_stack$4, /* MenhirState36 */0);
              }
            } else {
              exit$1 = 2;
            }
            if (exit$1 === 2) {
              if (_menhir_env$7[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        817,
                        12
                      ]
                    ];
              }
              _menhir_env$7[/* _menhir_error */3] = true;
              throw $$Error;
            }
            break;
        case 10 : 
            return _v;
        case 2 : 
        case 3 : 
        case 4 : 
        case 5 : 
        case 6 : 
        case 7 : 
        case 11 : 
        case 12 : 
        case 13 : 
            exit = 1;
            break;
        
      }
    } else {
      exit = 1;
    }
    if (exit === 1) {
      if (_menhir_env[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                911,
                8
              ]
            ];
      }
      _menhir_env[/* _menhir_error */3] = true;
      throw $$Error;
    }
    
  };
}

function _menhir_reduce14(_menhir_env, _menhir_stack, _menhir_s) {
  return _menhir_goto_read_field_list(_menhir_env, _menhir_stack, _menhir_s, /* [] */0);
}

function _menhir_goto_read_fields(_menhir_env, _menhir_stack, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          /* tuple */[
            "parser.ml",
            469,
            6
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  if (typeof _tok === "number") {
    if (_tok !== 4) {
      if (_menhir_env[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                506,
                8
              ]
            ];
      }
      _menhir_env[/* _menhir_error */3] = true;
      return _menhir_errorcase(_menhir_env, _menhir_stack[0], _menhir_stack[1]);
    } else {
      var _menhir_env$1 = _menhir_discard(_menhir_env);
      return _menhir_goto_read_field_list(_menhir_env$1, _menhir_stack[0], _menhir_stack[1], _v);
    }
  } else {
    var _menhir_stack_001 = _tok[0];
    var _menhir_stack$2 = /* tuple */[
      _menhir_stack$1,
      _menhir_stack_001
    ];
    var _menhir_env$2 = _menhir_discard(_menhir_env);
    return _menhir_goto_read_field_arguments(_menhir_env$2, _menhir_stack$2, /* [] */0);
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
          516,
          4
        ]
      ];
}

function _menhir_run6(_menhir_env, _menhir_stack) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_read_fields(_menhir_env$1, _menhir_stack, /* [] */0);
}

function _menhir_run20(_menhir_env, _menhir_stack) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _v = /* NonNullable */Block.__(1, [_menhir_stack[2]]);
  return _menhir_goto_read_type(_menhir_env$1, _menhir_stack[0], _menhir_stack[1], _v);
}

function read_schema(lexer, lexbuf) {
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
  return _menhir_goto_read_definitions(_menhir_env$1, _menhir_stack, /* [] */0);
}

exports.$$Error = $$Error;
exports.read_schema = read_schema;
/* No side effect */
