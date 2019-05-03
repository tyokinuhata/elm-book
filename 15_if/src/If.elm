-- if式 ... 条件分岐
-- if 条件式 then 真の場合 else 偽の場合 の形式
func1 = if True then "Hello" else "Bye"

-- thenとelseは必ず同じ型の値を返す必要がある
-- func2 = if True then 10 else "5"

-- else部分を省略することはできない
-- JavaScriptでの
{-
if (value > 0) {
    value = value + 1
}
-}
-- をElmで書き直す場合
old = 10
new = if old > 0 then old + 1 else old

-- 複数の条件を順に判定する場合は, else ifでつなげる
fizzBuzz n =
    if remainderBy 15 n == 0 then
        "FizzBuzz"
    else if remainderBy 3 n == 0 then
        "Fizz"
    else if remainderBy 5 n == 0 then
        "Buzz"
    else
        String.fromInt n
