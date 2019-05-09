-- パイプ ... コードの記述性を向上させる目的て用意された演算子
-- |> >> <| << の４種類

{-| 1から任意の数まで表示する

    showNumbersUtil 3 --> "1, 2, 3"

-}
-- 1から5のリストを作る -> それぞれの要素を文字列に変える -> カンマで結合する という流れを右から読む必要がある
showNumbersUtil : Int -> String
showNumbersUtil max =
    String.join ", " (List.map String.fromInt (List.range 1 max))

-- 上の関数を左から読めるようにしたもの
-- |>演算子は他の言語でいうメソッドチェーンのようなもの
-- メソッドチェーンはあくまで同じクラス内で宣言されたメソッドしかチェーンすることはできないが, パイプでは別モジュールの関数や自前の関数でも自由につなぐことができる
showNumbersUtil2 : Int -> String
showNumbersUtil2 max =
    List.range 1 max
        |> List.map String.fromInt
        |> String.join ", "
