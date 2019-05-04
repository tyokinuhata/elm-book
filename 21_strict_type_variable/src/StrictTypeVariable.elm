-- 制約付きの型変数
{-
number ... 数値計算や比較ができる. Int, Float
comparable ... 比較することができる. Int, Float, Char, String, それらの型を要素に持つリスト・タプル
appendable ... 値をつなげることができる. String, List a
compappend ... 値を比較することができ, かつ, つなげることができる. String, List a
-}
-- 制約付き型変数はこれで全て
-- ユーザが新たに定義することはできない

-- <function> : number -> number -> number
func1 = (+)
-- <function> : comparable -> comparable -> bool
func2 = (>)
-- <function> : appendable -> appendable -> appendable
func3 = (++)

-- レコードの比較はコンパイルエラー
func4 = 4 > 1
func5 = "b" > "a"
-- func6 = { a = 1 } > { a = 2 }

-- 同じ型でないのでコンパイルエラー
-- func6 = "a" > 2
