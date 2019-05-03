-- 部分適用

makeUrl scheme authority path = scheme ++ "://" ++ authority ++ path

-- Elmでは　((makeUrl "https") "example.com") "/index.html" のように解釈される
-- つまり,
-- makeUrl関数を"https"に適用して新しい関数(A)を返す
-- 関数(A)を"example.com"に適用して新しい関数(B)を返す
-- 関数(B)を"/index.html"に適用して得られた文字列を返す
-- という順番で解釈されている
func1 = makeUrl "https" "example.com" "/index.html"

-- 部分適用 ... 複数の引数のうち, 一部だけに関数を適用すること
makeSecureUrl = makeUrl "https"
func2 = makeSecureUrl "example.com" "/index.html"

makeLocalUrl = makeUrl "http" "localhost:3000"
func3 = makeLocalUrl "/style.css"
