example : Int
example = getId { id = 1, title = "Introduction" }

-- getId : { id : Int } -> Int -- エラー
-- aはid以外の任意のフィールドを持つレコードを表している
getId : { a | id : Int } -> Int
getId something = something.id

type alias HasId a = { a | id : Int }
type alias User = HasId { name : String }
type alias Article = HasId { title : String }
