-- レコード ... 名前付きのフィールドを持つデータ構造
user = { id = 1, name = "Alice" }
record1 = user.id
record2 = user.name

-- レコードの一部を更新して新しいレコードを作る
-- 最初のuserのデータ自体は変更されていない
-- Elmは全てのデータがイミュータブル(不変, Immutable)
-- 一度作った値の中身を後から変更することができない
newUser = { user | name = "ALICE" }

-- レコードは .フィールド名 という関数でアクセスすることもできる
record3 = .id user
record4 = .name user
record5 = List.map .name [ { id = 1, name = "Alice" }, { id = 2, name = "Bob" } ]

-- JavaScriptのオブジェクトのように, 文字列をキーにしてフィールドにアクセスしたり(user["name"]), 全てのフィールド名を列挙することはできない(Object.keys(user))
-- そのようなことをしたい場合はDictを使う
