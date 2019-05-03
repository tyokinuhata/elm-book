-- 匿名関数(anonymous function)
-- \記号を使って記述する
-- 0.18.0以前はλ記号でも記述できた模様

-- isNegative n = n < 0 を匿名関数で書き換え
isNegative = \n -> n < 0

-- その場で定義して引数を与えることができる
func1 = (\n -> n < 0) -5.5

-- 複数の引数を持つ場合
func2 = \a b -> a + b
