-- Maybe型
-- Elmにはnullが存在しない
-- その代わりに, 「値が無いかもしれない」状態をMaybeで表現する

-- Maybeはカスタム型で次のように定義されている
-- Maybe a型の値は, a型の値が存在することを示すJust a型と, 存在しないことを示すNothingのどちらかを示す
-- type Maybe a = Just a | Nothing

-- List.head関数はリストの戦闘要素を取得する関数
-- リストが１つ以上の要素を持っている場合は, 最初の値がJustにラップされて返る
list1 = List.head [1, 2, 3] -- Just 1
-- リストが空の場合はNothingが返ってくる
list2 = List.head []

-- パターンマッチを行うこともできる
-- 値がある場合と無い場合で必ず分岐しなければMaybeの中身にアクセスできないため, 「無いかもしれない値をあると思って使ってしまう」可能性を完全に排除できる
showFirstValue : List Int -> String
showFirstValue list =
    case List.head list of
        Just value ->
            String.fromInt value
        Nothing ->
            "Empty!"

-- Maybe.withDefault関数 ... 値が存在すればその値を返し, 存在しなければデフォルト値を返す
-- 第一引数がデフォルト値, 第二引数が判別する値
-- withDefault : a -> Maybe a -> a
-- デフォルト値はMaybeでラップされている型と同じ型であり, 戻り値もその型である必要がある
func1 = Maybe.withDefault 0 (Just 1) -- 1
func2 = Maybe.withDefault 0 Nothing -- 0

-- Maybe.map関数 ... 値が存在する場合, その値を別の値に変換する
-- map : (a -> b) -> Maybe a -> Maybe b
func3 = Maybe.map String.fromInt (Just 1) -- Just "1"
func4 = Maybe.map String.fromInt Nothing -- Nothingのまま

-- Maybe.andThen関数 ... Maybeを返す処理を連続で行う
-- 以下の例はリストから最初の要素を取り出し, それを整数に変換する
-- List.head : List a -> Maybe a
-- String.toInt : String -> Maybe Int
func5 = Maybe.andThen String.toInt (List.head ["1"]) -- Just 1 : Maybe Int
func6 = Maybe.andThen String.toInt (List.head ["foo!"]) -- Nothing : Maybe Int
func7 = Maybe.andThen String.toInt (List.head []) -- Nothing : Maybe Int

-- パイプで繋げることもできる
func8 =
    List.head ["1", "2", "3"]
        |> Maybe.andThen String.toInt
        |> Maybe.map (\num -> num * 10)
        |> Maybe.withDefault 0

