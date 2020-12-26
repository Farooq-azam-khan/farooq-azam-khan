module Main exposing (main)

import Browser
import Html exposing (..)
import ListOfLanguages exposing (laguagesList)
import Types exposing (..)


main =
    Browser.sandbox { init = init, update = update, view = view }


init : Model
init =
    {}


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Farooq A. Khan" ]
        , laguagesList
        ]
