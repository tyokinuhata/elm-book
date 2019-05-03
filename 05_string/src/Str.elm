-- 文字列はダブルクォーテーションで囲む
str = "Hello, world!"

-- 制御文字はバックスラッシュを使う(\n, \", \\)
escape = "Hello,\n world!"

-- 文字列の連結は++演算子を使う
concat = "Hello, " ++ "world!"
-- 数値同士を加算する+演算子とは明確に区別される(以下のコードはコンパイルエラー)
-- concat2 = "Hello, " + "world!"
-- concat3 = 8 ++ "world!"

-- """で囲むと, コード上で見たままの文字列を生成できる
-- 文字列が複数行にまたがる場合やダブルクォートをそのまま入力したいときに使う
str2 = """one "two" three"""
str3 = """
Hello,
world!
"""
