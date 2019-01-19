%token SCALAR
%token EXTENDS
%token INPUT
%token TYPE
%token <string> NAME
%token LEFT_BRACE
%token RIGHT_BRACE
%token COLON
%token BANG
%token LEFT_BRACKET
%token RIGHT_BRACKET
%token AT
%token LEFT_PARENT
%token RIGHT_PARENT
%token EOF

%{
  open Types
%}

%start <Types.schema> read_schema
%%

read_schema:
  | definitions = read_definitions EOF { definitions }

read_definitions:
  | { [] }
  | definitions = read_definitions
    TYPE name = NAME 
    fields = read_field_list
    {
      TypeDefinition {
        name= name;
        fields= fields
      }::definitions
    }
  | definitions = read_definitions
    EXTENDS
    TYPE name = NAME 
    fields = read_field_list
    {
      TypeExtensionDefinition {
        name= name;
        fields= fields
      }::definitions
    }
  | definitions = read_definitions
    SCALAR name = NAME 
    {
      (Scalar name)::definitions
    }
  | definitions = read_definitions
    INPUT name = NAME 
    fields = read_field_list
    {
      InputDefinition {
        name= name;
        fields= fields
      }::definitions
    }

read_field_list:
  | { [] }
  | read_field_list LEFT_BRACE fields = read_fields RIGHT_BRACE
    { fields }

read_fields:
  | { [] }
  | fields = read_fields field = read_field 
    { field::fields }

read_field:
  | name = NAME 
    arguments = read_field_arguments 
    COLON 
    typ = read_type
    directives = read_directives
    { 
      { 
        name= name; 
        arguments= arguments; 
        typ= typ; 
        directives= directives 
      }
    }

read_field_arguments:
  | { [] }
  | read_field_arguments
    LEFT_PARENT arguments = read_argument_list RIGHT_PARENT
    { arguments }

read_argument_list:
  | { [] }
  | list = read_argument_list
    argument = read_argument
    { argument::list }

read_argument:
  | name = NAME COLON typ = read_type
    { (name, typ) }

read_directives:
  | { [] }
  | directives = read_directives 
    AT directive = NAME 
    { directive::directives }

read_type:
  | LEFT_BRACKET typ = read_type RIGHT_BRACKET { List typ }
  | typ = read_type BANG { NonNullable typ }
  | name = NAME { Type name }