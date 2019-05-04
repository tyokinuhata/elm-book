-- type alias ... 型に別名を付ける
isValid : { id : Int, name : String, image : String } -> Bool
isValid user = String.length user.name > 0

type alias User = { id : Int, name : String, image : String }
isValid2 : User -> Bool
isValid2 user2 = String.length user2.name > 2

-- 基本的にデータを表すレコードは全てtype aliasを使って表現する
-- 後の追加でmail : String等のフィールドが増えても関数を書き直す必要がなくなる

-- type aliasを使った副次的な恩恵としてレコードを生成するための関数が自動生成される
-- 上の例の場合,
-- User : Int -> String -> String -> User
user3: User
user3 = User 1 "Taro" "1.png"

-- 既存の型に別名を付けることもできる
type alias UserId = Int
generateNewId : UserId -> UserId
generateNewId lastId = lastId + 1
func = generateNewId 1
