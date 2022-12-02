open String
type hand = Rock | Paper | Scissors

let char_to_hand ch =
    match ch with
        | "A" | "X" -> Rock
        | "B" | "Y" -> Paper
        | "C" | "Z" -> Scissors

let play you them =
    if you == them then 3
    else match (you, them) with
        | (Rock, Paper) | (Paper, Scissors) | (Scissors, Rock) -> 0
        | _ -> 6

let value ha =
    match ha with
        | Rock -> 1
        | Paper -> 2
        | Scissors -> 3

let total = ref 0;;
try
    while true do
        let thems::move::_ = split_on_char ' ' (read_line ()) in
        let them = char_to_hand thems in
        let you = 
            match move, them with
                | "Y", Rock | "Z", Scissors | "X", Paper -> Rock
                | "Y", Paper | "Z", Rock | "X", Scissors -> Paper
                | "Y", Scissors | "Z", Paper | "X", Rock -> Scissors
        in
        total := (value you) + (play you them) + !total;
    done
with End_of_file
    | _ -> print_int !total;;
print_newline ();;
