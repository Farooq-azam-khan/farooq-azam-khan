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



main =
    Browser.sandbox { init = init, update = update, view = view }


init : Model
init =
    {show_sm_navbar = False
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
            [ h1 [ class "max-w-2xl text-5xl text-3xl font-extrabold tracking-wider leading-normal" ]
                [ text "Full Stack Developer with a Passion for Machine Learning" ]
            , div [ class "space-y-6 flex flex-col mt-20 md:flex-row md:items-center md:space-x-10 md:space-y-0" ]
                [ div []
                    [ button
                        [ class "w-full md:px-10 md:py-5 transition duration-500 ease-in-out text-xl tracking-wider font-semibold bg-indigo-700 text-gray-100 px-3 py-3 shadow-lg rounded-lg hover:bg-indigo-600 motion-reduce:transition-none motion-reduce:transform-none"
                        ]
                        [ text "Portfolio" ]
                    ]
                , div []
                    [ button
                        [ class "w-full px-3 py-3 md:px-10 md:py-5 transition duration-500 ease-in-out text-xl tracking-wider font-semibold bg-indigo-200 text-indigo-800  hover:bg-indigo-400  shadow-lg rounded-lg  motion-reduce:transition-none motion-reduce:transform-none"
                        ]
                        [ text "Blogs" ]
                    ]
                ]
            ]
        , portfolio_section
        , sm_form_section
        , languages_section
        ]


elm_record : Language 
elm_record =  
           { name = "Elm Lang" 
           , description = "Elm is a delightful strictly typed functional programming language that compiles to JS. It is used to create UI."
           , link = "elm-lang.org"
           , image = logos_base ++ "/elm.svg" 
           }
python_record : Language
python_record =  
            { name = "Python" 
            , description = "Pyton is a langauge!"
            , link = "python.org"
            , image = logos_base ++ "/python.svg" 
            }

haskell_record : Language 
haskell_record =  
            { name = "Haskell" 
            , description = "Haskell is a langauge!"
            , link = "haskell.org"
            , image = logos_base ++ "/haskell.svg" 
            }

rust_record : Language 
rust_record = 
            { name = "Rust" 
            , description = "Rust is a langauge!"
            , link = "rust-lang.org"
            , image = logos_base ++ "/rust.svg" 
            }
display_language : Language -> Html Msg 
display_language lang = 
                        div [ class "flex space-x-3 items-start" ]
                            [ img [ class "w-12 h-12", src lang.image, alt (lang.name ++ "Logo") ] []
                            , div [ class "flex flex-col space-y-3" ]
                            [ div []
                            [ h4 [ class "font-semibold text-lg tracking-widest" ] [ text lang.name ]
                            , div [] [ a [ class "text-indigo-700 hover:underline" 
                                         , href "#" ] [ text lang.link ] ]
                            ]
                            , p [ class "max-w-lg text-gray-700" ] [ text lang.description ]
                            , div [] [ projects_btn ] 
                             ]
                        ]

projects_btn : Html Msg 
projects_btn = button [
                      class "px-10 py-2 text-lg text-indigo-100 bg-indigo-500 rounded-lg shadow-md" 
                      ] [ text "Projects" ] 

languages_section : Html Msg
languages_section =
    div [ class "mt-32 px-3" ]
        [ div [ class "space-y-5" ]
            [ div [ class "text-xl uppercase font-extrabold tracking-widest text-indigo-800" ]
                [ text "Languages" ]
            , h2
                [ class "max-w-lg text-gray-900 font-bold tracking-wide leading-relaxed text-3xl" ]
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
    div [ class "relative mt-32" ]
        [ div [ class "absolute inset-0 mb-32 bg-indigo-700" ] [ text "" ]
        , div [ class "relative z-10 mt-32 text-white py-3 px-3 grid gap-y-32 grid-cols-1 " ]
            [ my_songify_card
            , scheming_in_haskell_card
            , jarvis_the_typographer_card
            ] 
        ]


my_songify_img : String -> Html Msg
my_songify_img className =
    img
        [ class className
        , src "https://images.unsplash.com/photo-1532354058425-ba7ccc7e4a24?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80"
        ]
        []


my_songify_card : Html Msg
my_songify_card =
    div [ class "mx-auto max-w-2xl bg-white flex flex-col items-center rounded-lg shadow-xl py-5 space-y-10" ]
        [ div
            -- Image
            []
            [ my_songify_img "w-full rounded-lg shadow-lg -mt-20" ]
        , div
            -- tags
            [ class "flex space-x-3" ]
            [ lang_tag "python"
            , lang_tag "react/js"
            ]
        , div
            -- content
            [ class "flex flex-col items-center max-w-xl space-y-5" ]
            [ h2 [ class "text-4xl text-center font-bold text-indigo-700" ] [ text "My Songify" ]
            , p [ class "text-gray-700 text-lg text-center" ] [ text "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione." ]
            ]
        , div
            -- links
            [ class "flex space-x-3"
            ]
            [ code_btn "#", live_demo_btn "#" ]
        ]


scheming_in_haskell_card : Html Msg
scheming_in_haskell_card =
    div [ class "mx-auto max-w-2xl bg-white flex flex-col items-center rounded-lg shadow-xl py-5 space-y-10" ]
        [ div
            -- Image
            []
            [ my_songify_img "w-full rounded-lg shadow-lg -mt-20" ]
        , div
            -- tags
            [ class "flex space-x-3" ]
            [ lang_tag "python"
            , lang_tag "react/js"
            ]
        , div
            -- content
            [ class "flex flex-col items-center max-w-xl space-y-5" ]
            [ h2 [ class "text-4xl text-center font-bold text-indigo-700" ]
                [ text "Scheming in Haskell" ]
            , p [ class "text-gray-700 text-lg text-center" ]
                [ text "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione." ]
            ]
        , div
            -- links
            [ class "flex space-x-3"
            ]
            [ code_btn "#", live_demo_btn "#" ]
        ]


jarvis_the_typographer_card : Html Msg
jarvis_the_typographer_card =
    div [ class "mx-auto max-w-2xl bg-white flex flex-col items-center rounded-lg shadow-xl py-5 space-y-10" ]
        [ div
            -- Image
            []
            [ my_songify_img "w-full rounded-lg shadow-lg -mt-20" ]
        , div
            -- tags
            [ class "flex space-x-3" ]
            [ lang_tag "python"
            , lang_tag "react/js"
            ]
        , div
            -- content
            [ class "flex flex-col items-center max-w-xl space-y-5" ]
            [ h2 [ class "text-4xl text-center font-bold text-indigo-700" ]
                [ text "Jarvis the Typogropher" ]
            , p [ class "text-gray-700 text-lg text-center" ]
                [ text "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione." ]
            ]
        , div
            -- links
            [ class "flex space-x-3"
            ]
            [ code_btn "#", live_demo_btn "#" ]
        ]


lang_tag : String -> Html Msg
lang_tag tag_nm =
    span [ class "inline-flex items-center text-indigo-900 bg-indigo-200 px-4 py-1 rounded-full" ] [ text tag_nm ]


code_btn : String -> Html Msg
code_btn gh_lnk =
    a
        [ href gh_lnk
        , class "text-white text-lg rounded-lg shadow-lg px-5 py-2 bg-indigo-700"
        ]
        [ text "Code" ]


live_demo_btn : String -> Html Msg
live_demo_btn dmo_lnk =
    a
        [ href dmo_lnk
        , class "border text-lg rounded-lg shadow-lg  px-3 py-2  text-indigo-700 border-indigo-900"
        ]
        [ text "Live Demo" ]


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
    div [ class "transition easy-in-out duration-500 absolute rounded-lg top-0 left-0 w-full my-1 bg-indigo-700 shadow-xl motion-reduce:transition-none motion-reduce:transform-none" ]
        [ div [ class "flex items-center justify-between px-4 pt-6 pb-3" ]
            [ div [ class "text-indigo-200 font-bold text-lg tracking-wider font-semibold" ] [ text "Farooq A. Khan" ]
            , button
                [ onClick ToggleSmNavbar
                , class "text-white hover:bg-indigo-300 hover:text-indigo-600 px-1 py-1 rounded-lg"
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
    li [ class "font-bold text-xl hover:text-indigo-200" ] [ a [ href link_to ] [ text name ] ]
