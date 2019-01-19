open Jest
open Expect
open Types
open Belt.Result

;;
describe "Parser" (fun () ->
    test "simple inline queries" (fun () ->
        expect (Parser.parse {j|{ Hello Titi }|j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= None
                    ; variables= None
                    ; selection=
                        [ Field
                            { name= "Titi"
                            ; alias= None
                            ; selection= None
                            ; arguments= None }
                        ; Field
                            { name= "Hello"
                            ; alias= None
                            ; selection= None
                            ; arguments= None } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "inline query with alias" (fun () ->
        expect (Parser.parse {j|{ Coucou: Hello }|j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= None
                    ; variables= None
                    ; selection=
                        [ Field
                            { name= "Hello"
                            ; alias= Some "Coucou"
                            ; selection= None
                            ; arguments= None } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "inline query with sub selections" (fun () ->
        expect (Parser.parse {j|{ Hello { world } }|j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= None
                    ; variables= None
                    ; selection=
                        [ Field
                            { name= "Hello"
                            ; alias= None
                            ; arguments= None
                            ; selection=
                                Some
                                  [ Field
                                      { name= "world"
                                      ; alias= None
                                      ; selection= None
                                      ; arguments= None } ] } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "inline query with arguments" (fun () ->
        expect
          (Parser.parse
             {j|{ Hello(int: 32, float: 32.2, bool: true, list: [32, 32.3, false], assoc: { "float": 55.5 }) }|j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= None
                    ; variables= None
                    ; selection=
                        [ Field
                            { name= "Hello"
                            ; alias= None
                            ; selection= None
                            ; arguments=
                                Some
                                  [ ("assoc", `Assoc [("float", `Float 55.5)])
                                  ; ( "list"
                                    , `List [`Bool false; `Float 32.3; `Int 32]
                                    )
                                  ; ("bool", `Bool true)
                                  ; ("float", `Float 32.2)
                                  ; ("int", `Int 32) ] } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "inline query with fragments" (fun () ->
        expect
          (Parser.parse
             {j|
              { 
                ...Cool
              }

              fragment Cool on RootQuery {
                Hello
              }
        |j})
        |> toEqual
             (Ok
                [ Fragment
                    { name= "Cool"
                    ; type_name= "RootQuery"
                    ; selection=
                        [ Field
                            { name= "Hello"
                            ; alias= None
                            ; selection= None
                            ; arguments= None } ] }
                ; Operation
                    { typ= Query
                    ; name= None
                    ; variables= None
                    ; selection= [FragmentSpread {name= "Cool"}] } ]) ) )

;;
describe "Parser" (fun () ->
    test "inline query with inline fragments" (fun () ->
        expect
          (Parser.parse
             {j|
              { 
                ... on RootQuery {
                  Hello
                }
              }
        |j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= None
                    ; variables= None
                    ; selection=
                        [ InlineFragment
                            { type_name= "RootQuery"
                            ; selection=
                                [ Field
                                    { name= "Hello"
                                    ; alias= None
                                    ; selection= None
                                    ; arguments= None } ] } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "normal mutation without name" (fun () ->
        expect
          (Parser.parse
             {j|
              mutation {
                  doThings
              }
        |j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Mutation
                    ; name= None
                    ; variables= None
                    ; selection=
                        [ Field
                            { name= "doThings"
                            ; alias= None
                            ; selection= None
                            ; arguments= None } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "normal subscription with name" (fun () ->
        expect
          (Parser.parse
             {j|
              subscription name {
                  doThings
              }
        |j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Subscription
                    ; name= Some "name"
                    ; variables= None
                    ; selection=
                        [ Field
                            { name= "doThings"
                            ; alias= None
                            ; selection= None
                            ; arguments= None } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "normal query with arguments" (fun () ->
        expect
          (Parser.parse
             {j|
              query name (\$string: [String!]!) {
                  doThings
              }
        |j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= Some "name"
                    ; variables=
                        Some
                          [ Variable
                              { name= "string"
                              ; default= None
                              ; typ=
                                  NonNullable
                                    (List (NonNullable (Type "String"))) } ]
                    ; selection=
                        [ Field
                            { name= "doThings"
                            ; alias= None
                            ; selection= None
                            ; arguments= None } ] } ]) ) )

;;
describe "Parser" (fun () ->
    test "normal query with arguments and default value" (fun () ->
        expect
          (Parser.parse
             {j|
              query name (\$string: [String!]! = "Yollande") {
                  doThings
              }
        |j})
        |> toEqual
             (Ok
                [ Operation
                    { typ= Query
                    ; name= Some "name"
                    ; variables=
                        Some
                          [ Variable
                              { name= "string"
                              ; default= Some (`String "Yollande")
                              ; typ=
                                  NonNullable
                                    (List (NonNullable (Type "String"))) } ]
                    ; selection=
                        [ Field
                            { name= "doThings"
                            ; alias= None
                            ; selection= None
                            ; arguments= None } ] } ]) ) )
