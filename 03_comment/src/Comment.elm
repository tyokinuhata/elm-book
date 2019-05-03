import Html exposing (..)
import Html.Attributes exposing (..)

-- １行コメント

{- コメント -}

{-| ドキュメント用のコメント. 関数の使い方等を記述する.

    view { flag = True }

-}
view model =
    div[]
        [ text "Hello, world!"
        -- 文中の１行コメント
        , a [ href "#" ] [ text "TOP" ]
        ]
