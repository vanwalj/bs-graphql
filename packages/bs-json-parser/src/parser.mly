%token NULL
%token TRUE
%token FALSE
%token <int> INT
%token <float> FLOAT
%token <string> STRING
%token LEFT_BRACKET
%token RIGHT_BRACKET
%token LEFT_BRACE
%token RIGHT_BRACE
%token COMMA
%token COLON

%{
  open Types
%}

%start <Types.t> prog
%%

prog:
  | NULL { Null }
  | TRUE { Bool true }
  | FALSE { Bool false }
  | v = INT { Int v }
  | v = FLOAT { Float v }
  | v = STRING { String v }
  | LEFT_BRACKET; v = readList; RIGHT_BRACKET { List v }
  | LEFT_BRACE; v = readAssocList; RIGHT_BRACE { Assoc v }

readList:
  elements = separated_list(COMMA, prog) { elements }

readAssocList:
  elements = separated_list(COMMA, readAssoc) { elements }

readAssoc:
  id = STRING; COLON; value = prog { (id, value) }