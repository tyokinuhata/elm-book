-- identity ... 与えられた引数を何もせずにそのまま返す関数
-- <function> : a -> a
-- a ... 任意の型を当てはめられる.
-- Intを割り当てればInt -> Int, Stringを割り当てればString -> String
-- これを型変数と呼ぶ
func1 = identity 1

-- 引数が何であっても"Yes!"を返す関数
-- always ... <function> : a -> b -> a
-- a, bは独立した型変数
-- 以下の例ではalwaysに"Yes!"を渡しているため, String -> b -> String
-- また, 部分適用によって生まれたdoYouLike関数は, b -> String
doYouLike = always "Yes!"
func2 = doYouLike "elm"
func3 = doYouLike 139
