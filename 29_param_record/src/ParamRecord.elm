example : Int
example = getId { id = 1, title = "Introduction" }

-- getId : { id : Int } -> Int -- エラー
-- aはid以外の任意のフィールドを持つレコードを表している
getId : { a | id : Int } -> Int
getId something = something.id

type alias HasId a = { a | id : Int }
type alias User = HasId { name : String }
type alias Article = HasId { title : String }

addTitle : { id : Int } -> { id : Int, title : String }
addTitle something =
    -- { something | title = "Title" } -- エラー
    { id = something.id, title = "Title" }

changeIdType : { id : Int, title : String } -> { id : String, title : String }
changeIdType something =
    -- { something | id = String.fromInt something.id }
    { id = String.fromInt something.id, title = something.title }
