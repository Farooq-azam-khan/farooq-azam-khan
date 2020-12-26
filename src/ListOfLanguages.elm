module ListOfLanguages exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


laguagesList : Html Msg
laguagesList =
    div []
        [ h2 [] [ text "Languages" ]
        , ul []
            [ li [] [ a [ href "#" ] [ text "Elm" ] ]
            , li [] [ a [ href "#" ] [ text "Python" ] ]
            , li [] [ a [ href "#" ] [ text "C" ] ]
            , li [] [ a [ href "#" ] [ text "Rust" ] ]
            , li [] [ a [ href "#" ] [ text "JavaScript / Typescript" ] ]
            , li [] [ a [ href "#" ] [ text "Elm" ] ]
            , li [] [ a [ href "#" ] [ text "Bash" ] ]
            , li [] [ a [ href "#" ] [ text "C++" ] ]
            , li [] [ a [ href "#" ] [ text "Haskell" ] ]
            , li [] [ a [ href "#" ] [ text "Java" ] ]
            , li [] [ a [ href "#" ] [ text "Matlab" ] ]
            , li [] [ a [ href "#" ] [ text "Prolog" ] ]
            , li [] [ a [ href "#" ] [ text "R" ] ]
            , li [] [ a [ href "#" ] [ text "Smalltalk" ] ]
            , li [] [ a [ href "#" ] [ text "SQL" ] ]
            ]
        ]
