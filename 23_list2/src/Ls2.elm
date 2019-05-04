-- [ "Alice", "Bob" ] : List String
list1 = [ "Alice", "Bob" ]

-- [ 1.0, 8.6, 42.1 ] : List Float
list2 = [ 1.0, 8.6, 42.1 ]

-- [] : List a
-- aは型変数
-- 空のリストは要素の型が定まっていないため
list3 = []

-- 数値のリストを文字列のリストに変換
-- List.map ... <function> : (a -> b) -> List a -> List b
--- List a の Listの部分を型コンストラクタ, aの部分を型パラメータと呼ぶ
list4 = List.map String.fromInt [1, 2, 3]
