-- let式 ... 関数内で一時的な変数が必要になる場合に使う
-- let ... in ... の形式で使う
func1 = let a = 1 in a + 2

-- let と in の間には複数の変数を宣言する必要がある(複数行にする必要あり)
func2 =
    let
        a = 1
        b = 2
        add x y = x + y
    in
        add a b

-- 長い関数を定義する際に頻繁に使用される
message hour userName =
    let
        greeting =
            if hour < 12 then
                "Good morning"
            else if hour < 18 then
                "Good afternoon"
            else
                "Good evening"
    in
        greeting ++ ", " ++ userName ++ "!"

-- 式全体をそのまま関数に渡すことができる
func3 = max (let a = 1 in a + 1)(let b = 2 in b + 1)
