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
    div [ class "bg-gray-100 pb-32" ]
        [ navigation model
        , div [ class "px-3 mt-20" ]
            [ h1 [ class "text-5xl text-3xl font-semibold" ] [ text "Full Stack Developer with a passion for machine learning" ]
            , div [ class "space-y-6 flex flex-col mt-20 md:flex-row md:items-center md:space-x-10 md:space-y-0" ]
                [ div []
                    [ button
                        [ class "w-full md:px-10 md:py-5 transition duration-500 ease-in-out text-xl tracking-wider font-semibold bg-gray-900 text-gray-100 px-3 py-3 shadow-lg rounded-lg hover:bg-gray-800 motion-reduce:transition-none motion-reduce:transform-none"
                        ]
                        [ text "Portfolio" ]
                    ]
                , div []
                    [ button
                        [ class "w-full md:px-10 md:py-5 transition duration-500 ease-in-out text-xl tracking-wider font-semibold bg-gray-400 text-gray-900  px-3 py-3 shadow-lg rounded-lg hover:bg-gray-500 motion-reduce:transition-none motion-reduce:transform-none"
                        ]
                        [ text "Blogs" ]
                    ]
                ]
            ]
        , portfolio_section
        , sm_form_section
        , languages_section
        ]


languages_section : Html Msg
languages_section =
    div [ class "mt-32 px-3" ]
        [ div [ class "space-y-5" ]
            [ div [ class "text-xl tracking-widest text-gray-900" ]
                [ text "Languages" ]
            , h2
                [ class "text-gray-900 font-bold tracking-wide leading-relaxed text-3xl" ]
                [ text "Using the Right Tools for the Right Job"
                ]
            , p [ class "text-lg text-gray-700" ] [ text "Below is a Highlight of the languages I have Experience with and my preferences for the types of featues these laguages provide." ]
            ]
        , div [ class "grid mt-10 gap-y-10" ]
            -- Elm
            [ div [ class "flex space-x-3 items-start" ]
                [ img [ class "w-12 h-12", src (logos_base ++ "/elm.svg"), alt "Elm Logo" ] []
                , div [ class "flex flex-col space-y-3" ]
                    [ div []
                        [ h4 [ class "font-semibold text-lg tracking-widest" ] [ text "Elm Lang" ]
                        , div [] [ a [ href "#" ] [ text "elm-lang.org" ] ]
                        ]
                    , p [ class "text-gray-700" ] [ text "Elm is a delightful strictly typed functional programming language that compiles to JS. It is used to create UI. " ]
                    , div [] [ button [ class "px-4 py-2 text-lg bg-gray-300 text-gray-900 rounded-lg shadow-md" ] [ text "Projects" ] ]
                    ]
                ]

            -- Python
            , div [ class "flex space-x-3 items-start" ]
                [ img [ class "w-12 h-12", src (logos_base ++ "/python.svg"), alt "Python Logo" ] []
                , div [ class "flex flex-col space-y-3" ]
                    [ div []
                        [ h4 [ class "font-semibold text-lg tracking-widest" ] [ text "Python" ]
                        , div [] [ a [ href "#" ] [ text "python.org" ] ]
                        ]
                    , p [ class "text-gray-700" ] [ text "Elm is a delightful strictly typed functional programming language that compiles to JS. It is used to create UI. " ]
                    , div [] [ button [ class "px-4 py-2 text-lg bg-gray-300 text-gray-900 rounded-lg shadow-md" ] [ text "Projects" ] ]
                    ]
                ]

            -- Haskell
            , div [ class "flex space-x-3 items-start" ]
                [ img [ class "w-12 h-12", src (logos_base ++ "/haskell.svg"), alt "Haskell Logo" ] []
                , div [ class "flex flex-col space-y-3" ]
                    [ div []
                        [ h4 [ class "font-semibold text-lg tracking-widest" ] [ text "Elm Lang" ]
                        , div [] [ a [ href "#" ] [ text "elm-lang.org" ] ]
                        ]
                    , p [ class "text-gray-700" ] [ text "Elm is a delightful strictly typed functional programming language that compiles to JS. It is used to create UI. " ]
                    , div [] [ button [ class "px-4 py-2 text-lg bg-gray-300 text-gray-900 rounded-lg shadow-md" ] [ text "Projects" ] ]
                    ]
                ]

            -- Rust
            , div [ class "flex space-x-3 items-start" ]
                [ img [ class "w-12 h-12", src (logos_base ++ "/rust.svg"), alt "Elm Logo" ] []
                , div [ class "flex flex-col space-y-3" ]
                    [ div []
                        [ h4 [ class "font-semibold text-lg tracking-widest" ] [ text "Elm Lang" ]
                        , div [] [ a [ href "#" ] [ text "elm-lang.org" ] ]
                        ]
                    , p [ class "text-gray-700" ] [ text "Elm is a delightful strictly typed functional programming language that compiles to JS. It is used to create UI. " ]
                    , div [] [ button [ class "px-4 py-2 text-lg bg-gray-300 text-gray-900 rounded-lg shadow-md" ] [ text "Projects" ] ]
                    ]
                ]
            ]
        , div [ class "grid mt-12" ]
            [ a [ href "#", class "text-gray-700 underline font-bold" ] [ text "More Languages" ] ]
        ]



-- TODO: Style Form
-- TODO: Handle Form Submit


sm_form_section : Html Msg
sm_form_section =
    div [ class "md:hidden text-gray-900 mt-32 pt-10 shadow-xl" ]
        [ Html.form [ action "#", class "bg-white flex flex-col space-y-10" ]
            [ div [ class "flex flex-col" ]
                [ label [] [ text "Full Name" ]
                , input [ class "" ] []
                ]
            , div [ class "flex flex-col" ]
                [ label [] [ text "Email" ]
                , input [ class "" ] []
                ]
            , div [ class "flex flex-col" ]
                [ label [] [ text "Message" ]
                , textarea [] []
                ]
            , button
                [ type_ "submit"
                , class ""
                ]
                [ text "Send Message" ]
            ]
        ]


portfolio_section : Html Msg
portfolio_section =
    div [ class "mt-32 bg-gray-900 text-white py-3 px-3" ]
        [ span [ class "uppercase tracking-wider font-semibold py-1 rounded-full" ] [ text "portfolio" ]
        , div [ class "text-white" ] [ text "todo" ]
        ]


navigation : Model -> Html Msg
navigation model =
    nav [ class "relative px-3 py-4 bg-white shadow-lg" ]
        [ div [ class "flex justify-between items-center" ]
            [ div [ class "text-lg hover:underline cursor-pointer" ]
                [ a [ href "#" ] [ text "Farooq A. Khan" ]
                ]
            , div []
                [ button [ onClick ToggleSmNavbar, class "hover:bg-gray-800 hover:text-white rounded-lg px-1 py-1" ] [ menu_alt3 "w-8 h-8" ]
                ]
            ]
        , if model.show_sm_navbar then
            sm_navbar_modal

          else
            div [] []
        ]


sm_navbar_modal : Html Msg
sm_navbar_modal =
    div [ class "transition easy-in-out duration-500 absolute rounded-lg top-0 left-0 w-full my-1 bg-gray-900 shadow-xl motion-reduce:transition-none motion-reduce:transform-none" ]
        [ div [ class "flex items-center justify-between px-4 pt-6 pb-3" ]
            [ div [ class "text-gray-100 tracking-wider font-semibold" ] [ text "Farooq A. Khan" ]
            , button
                [ onClick ToggleSmNavbar
                , class "text-white hover:bg-gray-300 hover:text-gray-700 px-1 py-1 rounded-lg"
                ]
                [ close "w-8 h-8" ]
            ]
        , ul [ class "border-t border-gray-600 flex flex-col space-y-5 text-gray-100 px-4 pt-4 pb-6" ]
            [ sm_nav_link_item "Portfolio" "#"
            , sm_nav_link_item "Blog" "#"
            , sm_nav_link_item "Designs" "#"
            , sm_nav_link_item "Languages" "#"
            ]
        ]


sm_nav_link_item : String -> String -> Html Msg
sm_nav_link_item name link_to =
    li [ class "hover:text-gray-400" ] [ a [ href link_to ] [ text name ] ]
