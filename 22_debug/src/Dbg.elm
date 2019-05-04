-- デバッグ用の文字列表示
-- "{ id = 1 }" : String
func1 = Debug.toString { id = 1 }

-- 値が同一かどうか
-- False : bool
func2 = { id = 1 } == { id = 2 }
