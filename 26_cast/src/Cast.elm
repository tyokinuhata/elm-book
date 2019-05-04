-- Elmでは暗黙の型変換が行われない
-- 以下のコードはエラーになる
-- cast1 = "/articles" ++ 1 ++ "/settings"
-- String.fromInt で文字列に変換している
cast2 = "/articles" ++ String.fromInt 1 ++ "/settings"

{-
Debug.toString ... a -> String ... 任意の型を文字列に変換する

round ... Float -> Int ... 小数点以下を四捨五入
floor ... Float -> Int ... 小数点以下を切り捨て
ceiling ... Float -> Int ... 小数点以下を切り上げ
truncate ... Float -> Int ... 小数点以下を0に近づくよう丸める

toFloat ... Int -> Float ... 整数を小数に変換
String.fromInt ... Int -> String ... 整数を文字列に変換
String.fromFloat ... Float -> String ... 小数を文字列に変換
String.toInt ... String -> Maybe Int ... 文字列を整数に変換
String.toFloat ... String -> Maybe Float ... 文字列を小数に変換
-}
-- String.toIntとString.toFloatは失敗する可能性のある変換
cast3 = String.toInt "1" -- 成功
-- cast4 = String.toInt "Hey" -- 失敗
