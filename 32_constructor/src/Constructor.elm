-- カスタム型は一般的に以下のような形式で宣言する
{-
type 型 = コンストラクタ 型 型 ... | コンストラクタ 型 型 ... | ...
-}
-- コンストラクタは前の例のLoggedInやGuestの部分を指す
-- コンストラクタはタグとも呼ばれる
-- コンストラクタはカスタム型を生成するための関数でもある
-- user = LoggedIn True "Taro" のように書けるのは,
-- LoggedIn : Bool -> String -> User という関数が暗黙的に存在しているため
-- コンストラクタも通常の関数と同様に部分適用が可能
type User = LoggedIn Bool String | Guest

adminUser : String -> User
adminUser = LoggedIn True

admin = adminUser "Taro"

others = List.map (LoggedIn False) ["Hanako", "John"]
