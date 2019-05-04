-- (50.0, 13.5) : (Float, Float)
tuple1 = (50.0, 13.5)
-- (1, 19, "Thu") : (number, number, String)
tuple2 = (1, 19, "Thu")

-- Tuple.first ... <function> : (a, b) -> a
-- "Hello" : String
tuple3 = Tuple.first ("Hello", "World")

-- Tuple.pair ... <function> : a -> b -> (a, b)
-- ("Hello", "World") : (String, String)
tuple4 = Tuple.pair "Hello" "World"
