open Jest
open Expect
open Types
open Belt.Result

;;
describe "Parser" (fun () ->
    test "inline queries" (fun () ->
        expect (Parse.parse {j|{ Hello }|j})
        |> toEqual (Ok [Operation { typ = Query }]) ) )
