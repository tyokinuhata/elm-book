-- シンプルな値の列挙
-- 他の言語ではenum(列挙型)と呼ばれていることもある
-- それぞれの値はバリアント(Variant)と呼ぶ
-- バリアント名は大文字から始まるキャメルケースで記述する
-- Mon, Tueなどは型ではなく値
-- DayがIntに相当するならば, Mon, Tue, ...は1, 2, ...
-- また, Mon, Tueなどはあらかじめどこかで宣言されている訳ではなく, 今ここで定義された値
type Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun

firstDay : Day
firstDay = Mon

weekDay : List Day
weekDay = [ Mon, Tue, Wed, Thu, Fri ]
