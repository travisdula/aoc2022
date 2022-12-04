module Solution
open System

(* from StackOverflow *)
let rec readlines () = seq {
  let line = Console.ReadLine()
  if line <> null then
    yield line
    yield! readlines ()
  }

let contains (line:string):bool = 
  let [| l1; l2; r1; r2 |] = Array.map int (line.Split('-', ','))
  (r1 <= l1 && l2 <= r2 || l1 <= r1 && r2 <= l2)

[<EntryPoint>]
let main argv =
  printf "%d\n" (readlines() |> Seq.filter contains |> Seq.length)
  0 // Return an integer exit code
