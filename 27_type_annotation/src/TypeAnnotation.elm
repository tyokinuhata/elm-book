-- 型注釈(type annotation) ... 関数にのすぐ上に型を併記したもの
output : String
output = "1 + 1 = " ++ String.fromInt (add 1 1)
-- output = "1 + 1 = " ++ add 1 1 -- コンパイルエラー

add : Int -> Int -> Int
add a b = a + b
