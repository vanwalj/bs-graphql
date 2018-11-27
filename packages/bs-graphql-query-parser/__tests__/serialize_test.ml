open Jest
open Expect
open Types

;;
describe "Serializer" (fun () ->
    test "empty document" (fun () ->
        expect (Serialize.serialize_document []) |> toBe {j||j} ) )

;;
describe "Serializer" (fun () ->
    test "simple query" (fun () ->
        expect
          (Serialize.serialize_document
             [ Operation
                 { typ= Query
                 ; selection=
                     [ Field
                         { name= "hello"
                         ; alias= None
                         ; selection= None
                         ; arguments=
                             Some [("var", `Int 32); ("test", `String "hello")]
                         }
                     ; Field
                         { name= "world"
                         ; alias= None
                         ; selection=
                             Some
                               [ Field
                                   { name= "salut"
                                   ; alias= Some "hey"
                                   ; selection= None
                                   ; arguments= None }
                               ; InlineFragment
                                   { type_name= "Hello"
                                   ; selection=
                                       [ Field
                                           { name= "world"
                                           ; alias= None
                                           ; selection= None
                                           ; arguments= None } ] } ]
                         ; arguments= None } ]
                 ; name= Some "QName"
                 ; variables=
                     Some
                       [ Variable
                           { name= "test"
                           ; typ= NonNullable (List (NonNullable (Type "Int")))
                           ; default= Some (`Int 32) }
                       ; Variable
                           { name= "toast"
                           ; typ= NonNullable (List (Type "String"))
                           ; default= None } ] }
             ; Fragment
                 { name= "Toto"
                 ; type_name= "Titi"
                 ; selection=
                     [ Field
                         { name= "hello"
                         ; alias= None
                         ; selection= None
                         ; arguments= None } ] } ])
        |> toBe
             {j|query QName (\$test:[Int!]! = 32, \$toast:[String]!){hello(var:32, test:"hello") world{hey:salut ...on Hello {world}}}
fragment Toto on Titi{hello}|j}
    ) )
