%token <string> NAME
%token LEFT_BRACE
%token RIGHT_BRACE
%token EOF

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
    LEFT_BRACE selections = read_selection RIGHT_BRACE
    {
      Operation {
        typ=Query;
      }::definitions
    }

read_selection:
  | { [] }
  | selections = read_selection
    name = read_name
    {
      Field {
        name=name;
      }::selections
    }

read_name:
  | value = NAME
    { value }