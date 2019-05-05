-- ワイルドカード
-- カスタム型に限らず, 様々な場面で活用できる
-- 以下の例では, Int型の値を1か2かそれ以外かで分岐している
-- ワイルドカードは自由に変数名を付けることが可能だが, 慣習的に _ とすることが多い
hasMany number =
    case number of
        1 ->
            "one"
        2 ->
            "two"
        _ ->
            "many"

-- ワイルドカードは必ず最後のパターンにする必要がある
-- 以下はコンパイルエラーとなる
-- case式は上から順番に判定するため, 途中にワイルドカードを入れるとそれ以降にマッチしなくなる
-- Elmのコンパイラはパターンが冗長であるかもチェックしているため, これによりコンパイルエラーとなる
{-
hasMany number =
    case number of
        _ ->
            "many"
        1 ->
            "one"
        2 ->
            "two"
-}