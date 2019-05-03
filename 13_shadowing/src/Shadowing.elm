-- Elmではシャドーイングが禁止されている
-- シャドーイング ... 同名の変数で外側の変数を隠すこと
-- name = "foo"
-- showName name = "My name is " ++ name

-- 以下のコードで外側のスコープにあるnameが参照されていてもコンパイルされることを防いでいる
-- showName firstName = "My name is " ++ name
