import Html exposing (text)

-- 加減乗除には + - * / を使う
add = 1 + 1
sub = 1 - 1
multi = 5 * 2
div = 5 / 2

-- 乗算・除算は加算・減算よりも優先される
calc = 10 - 2.5 * 3
-- 優先度を変更したい場合は明示的に括弧で括る
calc2 = (10 - 2.5) * 3

-- 累乗
pow = 2 ^ 3

-- 除算(小数点以下の切り捨て)
round = 5 // 2

-- 16進数表記
hex = 0xff

-- 除算(%演算子は用意されていない. remainderBy, modByを使う)
mod = remainderBy 3 5
