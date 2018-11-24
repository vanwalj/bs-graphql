exception Unexpected

let test () =
  let jsonString = {js|{ "toto": "😇" }|js} in
  Js.log2 "Input" jsonString ;
  let parsed = jsonString |> Parse.parse in
  match parsed with
  | Ok parsed -> Js.log2 "Output" (parsed |> Serialize.serialize)
  | Error _ -> Js.log "Json parser error"

;;
test ()
