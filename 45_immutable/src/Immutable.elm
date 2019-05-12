-- Elmではあらゆるデータが不変(イミュータブル)
a = { id = 1, name = "Alice" }
b = { a | name = "Bob" } -- aは変化しない
