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
