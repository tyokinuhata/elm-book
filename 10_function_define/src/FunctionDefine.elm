-- 関数定義
-- 関数名 引数 引数 ... = 式 の形式
isNegative n = n < 0

-- 同名の関数は再度宣言できない
-- isNegative n = n < 0

-- 関数名は必ず小文字から始め, キャメルケースとする

-- 複数の引数をとる関数
makeUrl scheme authority path = scheme ++ "://" ++ authority ++ path
