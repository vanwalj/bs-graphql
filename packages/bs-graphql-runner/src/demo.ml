type 'a thunk = Promise of 'a Js.Promise.t | Value of 'a

type ('source, 'output) resolver = 'source -> 'output thunk

type 'source scalar = {name: string; serialize: 'source -> BsGraphqlJsonParser.Types.t}

and 'source obj = {name: string; fields: 'source field list}

and 'source typ = Scalar of 'source scalar | Object of 'source obj

and ('source, 'output) field_ =
  {name: string; output_type: 'output typ; resolve: ('source, 'output) resolver}

and 'source field = Field : ('source, _) field_ -> 'source field

let int = Scalar {name= "Int"; serialize= (fun i -> BsJsonParser.Types.Int i)}

let string =
  Scalar {name= "String"; serialize= (fun s -> BsJsonParser.Types.String s)}

type 'source schema =
  { query: 'source obj
  ; mutation: 'source obj option
  ; subscription: 'source obj option }

type error =
  | NamedDefinitionNotFound of string
  | EmptyDocument
  | NoMutationsToQuery
  | NoSubscriptionsToQuery

let rec getOperation (document : BsGraphqlQueryParser.Types.document)
    operationName =
  match (query, operationName) with
  | Operation ({name= Some name} as operation) :: _, Some operationName
    when name = operationName ->
      Belt.Result.Ok operation
  | Operation operation :: _, None -> Belt.Result.Ok operation
  | _ :: definitions, _ -> getOperation definitions operationName
  | [], Some operationName ->
      Belt.Result.Error (NamedDefinitionNotFound operationName)
  | [], None -> Belt.Result.Error EmptyDocument

let getRootObject schema (operation : BsGraphqlQueryParser.Types.operation)
    =
  match (operation.typ, schema) with
  | Mutation, {mutation= Some fields} -> Belt.Result.Ok fields
  | Mutation, _ -> Belt.Result.Error NoMutationsToQuery
  | Subscription, {subscription= Some fields} -> Belt.Result.Ok fields
  | Subscription, _ -> Belt.Result.Error NoSubscriptionsToQuery
  | Query, schema -> Belt.Result.Ok schema.query

let rec getFragments (query : BsGraphqlQueryParser.Types.document) =
  match query with
  | Fragment fragment :: definitions -> fragment :: getFragments definitions
  | _ :: definitions -> getFragments definitions
  | [] -> []

let rec resolveFieldSelections operation rootFieldList query source context
    variables fragments =
  ""

let run (schema : 'source schema) (query : BsGraphqlQueryParser.Types.document)
    (source : 'source) context variables operationName =
  let fragments = getFragments query in
  let operation = getOperation query operationName in
  match operation with
  | Error error -> Belt.Result.Error error
  | Ok operation -> (
    match getRootObject schema operation with
    | Error error -> Belt.Result.Error error
    | Ok rootObject -> Belt.Result.Ok "" )

(* Demo *)

type user = {id: int; name: string}

let id =
  Field {name= "id"; output_type= int; resolve= (fun user -> Value user.id)}

let name =
  Field
    {name= "name"; output_type= string; resolve= (fun user -> Value user.name)}

let user_type = Object {name= "User"; fields= [id; name]}
