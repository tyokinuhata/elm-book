-- カスタム型の値はcase式(case ... of ...)で分岐できる
-- これは特にパターンマッチ(Pattern Matching)と呼ぶ

type Lang = En | Ja | Fr

-- case式はブロック全体で１つの式
-- 全ての分岐は同じ型の値を返さなければならない
-- 分岐が全てのケースを網羅できていない場合はコンパイルエラー
hello : Lang -> String
hello lang =
    case lang of
        En -> "Hello"
        Ja -> "こんにちは"
        Fr -> "Bonjour"

func = hello En

-- if ... then ... else でも上記と同じ挙動を実現できる
-- ただし, Langにイギリスが追加されてもコンパイラは警告を出さないため, そのまま"Bonjour"を表示する可能性がある
-- カスタム型の網羅性を利用することでより安全性を高めることができる
hello2 : Lang -> String
hello2 lang =
    if lang == En then
        "Hello"
    else if lang == Ja then
        "こんにちは"
    else
        "Bonjour"

-- それぞれのバリアントに別の値を持たせることもできる
-- LoggedIn ... ログイン中のユーザ
-- Guest ... 匿名のゲスト
type User = LoggedIn String | Guest

user1 : User
user1 = LoggedIn "Taro"

user2 : User
user2 = LoggedIn "Hanako"

user3 : User
user3 = Guest

-- LoggedIn name -> の name は保持していたStringの値. 名前は文脈によって自由につけて良い
message : User -> String
message user =
    case user of
        LoggedIn name ->
            "Hello, " ++ name ++ "!"
        Guest ->
            "Please Login."

func1 = message user1
func2 = message user2
func3 = message user3

-- カスタム型に２つの値をもたせることも可能
type User2 = LoggedIn2 Bool String | Guest2

message2 : User2 -> String
message2 user =
    case user of
        LoggedIn2 isAdmin name ->
            if isAdmin then
                "Hello, " ++ name ++ "(Administrator)!"
            else
                "Hello, " ++ name ++ "!"
        Guest2 ->
            "Please Login."

func4 = message2 (LoggedIn2 True "Taro")
func5 = message2 (LoggedIn2 False "Hanako")
func6 = message2 Guest2

-- 上記のコードは以下のように簡略化して記述できる
message3 : User2 -> String
message3 user =
    case user of
        LoggedIn2 True name ->
            "Hello, " ++ name ++ "(Administrator)!"
        LoggedIn2 False name ->
            "Hello, " ++ name ++ "!"
        Guest2 ->
            "Please Login."
