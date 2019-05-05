-- リストもパターンマッチが可能
func1 list =
    case list of
        [] ->
            "Empty"
        -- list == [1] の場合は, firstが1, restが[]となる
        -- list == [1, 2, 3, 4] の場合は, firstが1, restが[2, 3, 4]となる
        -- first :: second :: third :: rest -> のようにすることも可能
        first :: rest ->
            "The first value is " ++ first ++ "."

func2 list =
    case list of
        [] ->
            "Empty"
        [a] ->
            "Just one value: " ++ a
        [a, b] ->
            "Just two values" ++ a ++ "and" ++ b
        _ ->
            "More than two values"
