module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import ListOfLanguages exposing (laguagesView)
import Types exposing (..)


languages : List Language
languages =
    [ { href = "#", name = "Elm" }
    , { href = "#", name = "Python" }
    , Language "#" "C"
    , Language "#" "Rust"
    , Language "#" "Javascript / Typescript"
    , Language "#" "Bash"
    , Language "#" "C++"
    , Language "#" "Haskell"
    , Language "#" "Java"
    , Language "#" "Matlab"
    , Language "#" "Prolog"
    , Language "#" "R"
    , Language "#" "Smalltalk"
    , Language "#" "SQL"
    ]


main =
    Browser.sandbox { init = init, update = update, view = view }


init : Model
init =
    { languages = languages
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


view : Model -> Html Msg
view model =
    div []
        [ h1 [ class "font-bold text-lg" ] [ text "Farooq A. Khan" ]
        , laguagesView model.languages
        ]
