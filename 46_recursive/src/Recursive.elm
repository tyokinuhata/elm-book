-- Elmにおいてfor文やwhile文は用意されていない
-- そのため, 再帰を利用する
sumUtil : Int -> Int
sumUtil n =
    if n == 1 then
        1
    else
        n + sumUtil (n - 1)
