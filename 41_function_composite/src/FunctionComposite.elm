showNumbersUtil : Int -> String
showNumbersUtil max =
    (List.range 1 >> List.map String.fromInt >> String.join ", ") max

showNumbersUtil2 : String
showNumbersUtil2 =
    (List.range 1 >> List.map String.fromInt >> String.join ", ") 5

func1 : List Int -> List String
func1 list =
    List.map (String.fromInt >> String.repeat 3) list
