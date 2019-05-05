-- タプルでもパターンマッチすることが可能
adoption tuple =
    case tuple of
        (True, True) ->
            "Yes!"
        (False, False) ->
            "No..."
        _ ->
            "I don't know."

func = adoption (True, False)
