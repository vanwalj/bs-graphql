// Generated by BUCKLESCRIPT VERSION 4.0.18, PLEASE EDIT WITH CARE
'use strict';

var Block = require("bs-platform/lib/js/block.js");
var Lexing = require("bs-platform/lib/js/lexing.js");
var Caml_js_exceptions = require("bs-platform/lib/js/caml_js_exceptions.js");
var Menhir_parser$BsGraphqlJsonParser = require("./menhir_parser.bs.js");
var Ocamllex_lexer$BsGraphqlJsonParser = require("./ocamllex_lexer.bs.js");

function get_position(lexbuf) {
  var pos = lexbuf[/* lex_curr_p */11];
  return /* record */[
          /* fileName */pos[/* pos_fname */0],
          /* lineNumber */pos[/* pos_lnum */1],
          /* columnNumber */(pos[/* pos_cnum */3] - pos[/* pos_bol */2] | 0) + 1 | 0
        ];
}

function parse(s) {
  var lexbuf = Lexing.from_string(s);
  try {
    return /* Ok */Block.__(0, [Menhir_parser$BsGraphqlJsonParser.prog(Ocamllex_lexer$BsGraphqlJsonParser.read, lexbuf)]);
  }
  catch (raw_exn){
    var exn = Caml_js_exceptions.internalToOCamlException(raw_exn);
    if (exn[0] === Ocamllex_lexer$BsGraphqlJsonParser.$$SyntaxError) {
      return /* Error */Block.__(1, [/* SyntaxError */Block.__(0, [/* tuple */[
                      get_position(lexbuf),
                      exn[1]
                    ]])]);
    } else if (exn === Menhir_parser$BsGraphqlJsonParser.$$Error) {
      return /* Error */Block.__(1, [/* ParserError */Block.__(1, [get_position(lexbuf)])]);
    } else {
      throw exn;
    }
  }
}

exports.get_position = get_position;
exports.parse = parse;
/* No side effect */