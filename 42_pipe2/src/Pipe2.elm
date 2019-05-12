-- <|演算子は|>と同等の操作を逆方向に行うパイプ
-- しかし, 右から実装するために使われることは少なく, 括弧を省略するために使われることが多い
showNumbersUtil max =
    String.join ", " (List.map String.fromInt (List.range 1 max))

showNumbersUtil2 max =
    String.join ", " <| List.map String.fromInt <| List.range 1 max
