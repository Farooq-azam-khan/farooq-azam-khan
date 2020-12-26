module ListOfLanguages exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


languageDisplay : Language -> Html Msg
languageDisplay lang =
    li [ class "rounded-lg bg-white min-w-xl px-2 py-3 shadow-lg" ]
        [ a
            [ href lang.href
            , class "hover:text-gray-600 cursor-pointer text-gray-800"
            ]
            [ span [ class "underline" ] [ text lang.name ]
            ]
        , div [ class "flex flex-col" ]
            [ span [ class "pt-2" ] [ text "asdfasdfasd asdf" ]
            ]
        ]


laguagesView : List Language -> Html Msg
laguagesView languages =
    div [ class "mt-3 px-1 bg-orange-200 text-orange-900" ]
        [ h2 [ class "text-center text-lg" ] [ text "Languages" ]
        , ul [ class "grid grid-cols-1 sm:grid-cols-3 pt-3 gap-x-2 gap-y-3" ]
            (List.map languageDisplay languages)
        ]
