-- リスト
-- リストの要素にアクセスするには先頭(一番左)から順に辿っていく必要がある
-- 最初の要素にはすぐにアクセスできるが, 最後の要素はリストの長さに比例した時間がかかる
-- リストの要素へのアクセスにはO(N)時間かかる
-- リストの先頭に要素を追加する::演算子が用意されているのに対し, リストの末尾に要素を追加する演算子が用意されていないのはこのため
-- もし, 末尾の要素に頻繁にアクセスする必要があるのであれば, 別のデータ構造も検討する

-- List.head ... リストの先頭要素を取り出す
list1 = List.head ["foo", "bar", "baz"]

-- List.tail ... 先頭を除いた残りのリストを返す
list2 = List.tail ["foo", "bar", "baz"]

-- List.length ... リストの長さを返す
-- length : List a -> Int
list3 = List.length [1, 2, 3, 4, 5] -- 5

-- List.map ... リストのそれぞれの要素に関数を適用し, 新たなリストを返す
-- map : (a -> b) -> List a -> List b
list4 = List.map (\lang -> "I love " ++ lang) ["Elm", "JavaScript"] -- ["I love Elm", "I love JavaScript"]
list5 = List.map ((*) 10) [2, 3, 5] -- [20, 30, 50]

-- List.indexedMap ... List.mapと似ているが, indexedMapはリストのインデックスを使用できる
-- indexedMap : (Int -> a -> b) -> List a -> List b
list6 = List.indexedMap (\index lang -> String.fromInt index ++ ": " ++ lang) ["Elm", "JavaScript"] -- ["0: Elm", "1: JavaScript"]
list7 = List.indexedMap Tuple.pair [2, 3, 5] -- [(0, 2), (1, 3), (2, 5)]

-- List.filter ... 条件に合った要素のみを抽出したリストを作成する
-- filter : (a -> Bool) -> List a -> List a
list8 = List.filter (\(_, staticType) -> staticType) [("Elm", True), ("JavaScript", False)] -- [("Elm", True)]
list9 = List.filter (\n -> remainderBy 2 n == 1) [2, 3, 5] -- [3, 5]

-- List.filterMap ... フィルタリングすると同時に要素を変換する
-- filterMap : (a -> Maybe b) -> List a -> List b
list10 = List.filterMap (\(lang, staticType) -> if staticType then Just lang else Nothing) [("Elm", True), ("JavaScript", False)] -- ["Elm"]
list11 = List.filterMap (\n -> if remainderBy 2 n == 1 then Just (10 * n) else Nothing) [2, 3, 5] -- [30, 50]

-- List.foldl ... リストの要素を集約して１つの値を作る
-- foldl : (a -> b -> b) -> b -> List a -> b
-- 集約処理は畳み込みとも呼ばれる
-- foldlはfold from the left(左から畳み込む)の意味
list12 = List.foldl (\n sum -> sum + n) 0 [1, 2, 3, 4, 5] -- 15
list13 = List.foldl (+) 0 [1, 2 ,3 ,4 ,5] -- 15
list14 = List.foldl (\n str -> str ++ " " ++ String.fromInt n) "Prime Numbers: " [2, 3, 5, 7, 11] -- Prime Numbers: 2 3 5 7 11
