%token <string> NAME
%token LEFT_BRACE
%token RIGHT_BRACE
%token LEFT_PARENT
%token RIGHT_PARENT
%token LEFT_BRACKET
%token RIGHT_BRACKET
%token COLON
%token EOF
%token <int> INT
%token <float> FLOAT
%token <string> STRING
%token TRUE
%token FALSE
%token DOLLAR
%token FRAGMENT
%token ON
%token SPREAD
%token MUTATION
%token QUERY
%token SUBSCRIPTION
%token BANG
%token EQUAL

%{
  open Types
%}

%start <Types.document> read_document
%%

read_document:
  | definitions = read_definitions EOF { definitions }

read_definitions:
  | { [] }
  | definitions = read_definitions
    LEFT_BRACE selection = read_selection RIGHT_BRACE
    {
      Operation {
        typ=Query;
        selection=selection;
        variables=None;
        name= None
      }::definitions
    }
  | definitions = read_definitions
    FRAGMENT name = NAME ON type_name = NAME
    LEFT_BRACE selection = read_selection RIGHT_BRACE
    {
      Fragment {
        name= name;
        type_name= type_name;
        selection= selection;
      }::definitions
    }
  | definitions = read_definitions
    operation_type = read_operation_type
    name = option(NAME)
    variables = read_variables
    LEFT_BRACE selection = read_selection RIGHT_BRACE
    {
      Operation {
        typ=operation_type;
        selection=selection;
        variables=variables;
        name=name
      }::definitions
    }

read_variables:
  | { None }
  | read_variables LEFT_PARENT variables = read_variable RIGHT_PARENT
    { Some variables }

read_variable:
  | { [] }
  | list = read_variable DOLLAR name = NAME COLON typ = read_variable_type default_value = read_default_variable_value
    { 
      Variable { name=name; typ=typ; default= default_value}::list
    }

read_default_variable_value:
  | { None }
  | EQUAL default_value = read_const_value { Some default_value }

read_variable_type:
  | LEFT_BRACKET typ = read_variable_type RIGHT_BRACKET { List typ }
  | typ = read_variable_type BANG { NonNullable typ }
  | name = NAME { Type name }

read_operation_type:
  | MUTATION { Mutation }
  | QUERY { Query }
  | SUBSCRIPTION { Subscription }

read_selection:
  | { [] }
  | selection = read_selection
    alias = read_alias
    name = NAME
    arguments = read_arguments
    sub_selection = read_sub_selection
    {
      Field {
        name=name;
        alias=alias;
        arguments=arguments;
        selection=sub_selection
      }::selection
    }
  | selection = read_selection
    SPREAD name = NAME
    {
      FragmentSpread {
        name=name;
      }::selection
    }
  | selection = read_selection
    SPREAD ON type_name = NAME
    LEFT_BRACE sub_selection = read_selection RIGHT_BRACE
    {
      InlineFragment {
        type_name= type_name;
        selection= sub_selection
      }::selection
    }

read_arguments: 
  | { None }
  | read_arguments LEFT_PARENT arguments = read_argument RIGHT_PARENT 
    { Some arguments }

read_argument:
  | { [] }
  | arguments = read_argument
    argument_name = NAME
    COLON
    argument_value = read_argument_value
    { (argument_name, argument_value)::arguments }

read_argument_value:
  | v = INT { `Int v }
  | v = FLOAT { `Float v }
  | v = STRING { `String v }
  | TRUE { `Bool true }
  | FALSE { `Bool false }
  | DOLLAR name = NAME { `Variable name }
  | LEFT_BRACKET arguments_values = read_argument_list RIGHT_BRACKET { `List arguments_values }
  | LEFT_BRACE arguments_assoc = read_argument_assoc RIGHT_BRACE { `Assoc arguments_assoc }
  | v = NAME { `Enum v }

read_const_value:
  | v = INT { `Int v }
  | v = FLOAT { `Float v }
  | v = STRING { `String v }
  | TRUE { `Bool true }
  | FALSE { `Bool false }
  | LEFT_BRACKET const_values = read_const_list RIGHT_BRACKET { `List const_values }
  | LEFT_BRACE const_assoc = read_const_assoc RIGHT_BRACE { `Assoc const_assoc }
  | v = NAME { `Enum v }

read_const_assoc:
  | { [] }
  | list = read_const_assoc name = STRING COLON value = read_const_value { (name, value)::list }

read_const_list:
  | { [] }
  | list = read_const_list value = read_const_value { value::list }

read_argument_assoc:
  | { [] }
  | list = read_argument_assoc name = STRING COLON value = read_argument_value { (name, value)::list }

read_argument_list:
  | { [] }
  | list = read_argument_list value = read_argument_value { value::list }

read_sub_selection:
  | { None }
  | read_sub_selection LEFT_BRACE selection = read_selection RIGHT_BRACE
    { Some selection }

read_alias:
  | { None }
  | read_alias name = NAME COLON
    { Some name }