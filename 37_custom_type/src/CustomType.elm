-- 身近なカスタム型
-- 下記はBasicsモジュールに宣言されているBool型の定義
-- True/Falseの先頭が大文字なのはそれぞれがそれぞれがコンストラクタのため
type Bool = True | False

-- 自前のタプルの実装
-- 動かない. クソ
-- type Tuple a b = Tuple a b

-- myTuple : Tuple a b
-- myTuple = Tuple 1 "a"

-- originalTuple : (a, b)
-- originalTuple = Tuple.pair 1 "a"

-- 自前のリストの実装
-- NilとConsはそれぞれ[]と::を表す専用の名前
-- つまり[]と::はList型のためのコンストラクタ
-- 動かない. クソ
--type MyList a = Nil | Cons a (MyList a)

-- myHead : MyList a -> Maybe a
-- myHead list =
    -- case list of
        -- Nil -> "Nothing"
        -- Cons first _ -> "Just first"

-- originalHead : List a -> Maybe a
-- originalHead list =
    -- case list of
        -- [] -> "Nothing"
        -- first :: _ -> "Just first"
