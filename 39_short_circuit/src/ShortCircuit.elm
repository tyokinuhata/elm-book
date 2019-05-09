-- ショートサーキット
-- &&演算子と||演算子が行う特殊な振る舞い
-- a && b はaがTrueの場合のみbを評価する
-- a || b はaがFalseの場合のみbを評価する
func1 flag heavyFunc = if flag && heavyFunc then "something" else "something"
-- ショートサーキットが有効になるのは中置演算子として使った場合のみ
-- 関数として使った場合は先に両方の式が評価されるため注意する
func2 flag heavyFunc = if (&&) flag heavyFunc then "something" else "something"
