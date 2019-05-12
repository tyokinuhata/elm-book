-- << ... >>とは逆向きに関数合成する演算子
showNumbersUtil max =
    (String.join ", " << List.map String.fromInt << List.range 1) max
