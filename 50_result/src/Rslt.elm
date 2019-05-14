-- Result ... 失敗するかもしれない結果を表すデータ構造
-- Maybeと似ているが, Resultは失敗の原因も情報として持つ
-- Resultはカスタム型で次のように定義されている
-- type Result err a = Err err | Ok a

validate : String -> Result String Float
validate text =
    case String.toFloat text of
        Just value ->
            Ok value
        Nothing ->
            Err "数値を入力してください"

func text =
    case validate text of
        Ok value ->
            Ok value
        Err message ->
            Err message
