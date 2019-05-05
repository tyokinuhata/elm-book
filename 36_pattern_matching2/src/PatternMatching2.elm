-- case式以外のパターンマッチ
-- 関数の引数やlet式の中でも値を分解して取り出せる
getYear : (Int, Int) -> Int
getYear (year, month) =
    year

getFullName : { id : Int, firstName : String, lastName : String } -> String
getFullName { firstName, lastName } =
    firstName ++ " " ++ lastName

-- リストや複数の値があるカスタム型(Maybe等)ではパターンが一種類に絞れないため使えない
{-
getFirst : List a -> a
getFirst (first :: _) =
    first
-}

-- カスタム型でも値が１つならば引数を分解可能
type MyType = MyValue String

getValue : MyType -> String
getValue (MyValue value) =
    value
