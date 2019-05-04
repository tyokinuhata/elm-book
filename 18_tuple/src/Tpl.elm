-- タプル ... 組を表すデータ構造
-- リストとは違い, 異なる型を組にできる
tuple1 = (0, "a")
tuple2 = ("Hello", True, [1, 2, 3])

-- =演算子で値を取り出すことができる
tuple3 =
    let
        (number, text) = (0, "a")
    in
        number

-- 関数が引数にタプルを取る場合は以下のように要素ごとに変数を割り当てられる
getText (number, text) = text
func2 = getText (0, "a")

-- 要素が２つのタプルに限っては, 組み込み関数のTuple.firstとTuple.secondを使うことができる
tuple4 = Tuple.first (0, "a")
tuple5 = Tuple.second (0, "a")

-- 要素が２つのタプルはpair関数で生成することもできる
tuple6 = Tuple.pair 0 "a"

-- タプルの要素数の上限は３個に制限されている
-- これはタプルがあくまで一時的に値を組にする用途を想定した機能であるため
