type typ = 
  | Type of string
  | NonNullable of typ
  | List of typ

type argument = (string * typ)


type field = {
  name: string;
  arguments: argument list;
  typ: typ;
  directives: string list
}

type type_definition = {
  name: string;
  fields: field list
}

type definition = 
  | TypeDefinition of type_definition
  | TypeExtensionDefinition of type_definition
  | Scalar of string
  | InputDefinition of type_definition

type schema = definition list