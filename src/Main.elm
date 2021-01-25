module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Icons exposing (..)
import Projects exposing (..)
import Types exposing (..)


logos_base : String
logos_base =
    "./src/logos"


languages : List Language
languages =
    [ { href = "#", name = "Elm", image = Just (logos_base ++ "/elm.svg") }
    , { href = "#", name = "Python", image = Just (logos_base ++ "/python.svg") }
    , Language "#" "C" Nothing
    , Language "#" "Rust" (Just (logos_base ++ "/rust.svg"))
    , Language "#" "Javascript / Typescript" Nothing
    , Language "#" "Bash" Nothing
    , Language "#" "C++" Nothing
    , Language "#" "Haskell" Nothing
    , Language "#" "Java" Nothing
    , Language "#" "Matlab" Nothing
    , Language "#" "Prolog" Nothing
    , Language "#" "R" Nothing
    , Language "#" "Smalltalk" Nothing
    , Language "#" "SQL" Nothing
    ]


main =
    Browser.sandbox { init = init, update = update, view = view }


init : Model
init =
    { languages = languages
    , show_sm_navbar = False
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        ToggleSmNavbar ->
            { model | show_sm_navbar = not model.show_sm_navbar }


view : Model -> Html Msg
view model =
    div [class "bg-gray-100"]
        [ h1 [ class "ftext-center text-3xl font-semibold" ] [ text "Farooq A. Khan" ]
        , projectsView model
        , laguagesView model.languages
        ]
