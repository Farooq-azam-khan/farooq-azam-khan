module Main exposing (main)

import Browser
import Html exposing (..)
import Browser.Navigation as Nav exposing (Key)
import Url exposing (Url)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Icons exposing (..)
import Projects exposing (..)
import Types exposing (..)


logos_base : String
logos_base =
    "./src/logos"


main : Program () Model Msg 
main =
    Browser.application { init = init
                        , update = update
                        , view = view 
                        , subscriptions = subscriptions
                        , onUrlChange = UrlChanged
                        , onUrlRequest = LinkClicked
                        }

init : () -> Url -> Key ->  (Model, Cmd Msg) 
init _ url key =
        let 
            model = { show_sm_navbar = False, key = key, url = url}
        in
            (model, Cmd.none)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NoOp ->
            (model, Cmd.none)

        ToggleSmNavbar ->
            ({ model | show_sm_navbar = not model.show_sm_navbar }, Cmd.none)
        
        LinkClicked urlRequest -> 
            case urlRequest of 
                Browser.Internal url -> 
                    (model, Nav.pushUrl model.key (Url.toString url))
                
                Browser.External href -> 
                    (model, Nav.load href)
        
        UrlChanged url -> 
            ({model | url=url}, Cmd.none)

subscriptions : Model -> Sub Msg 
subscriptions _ = Sub.none 



home_page : Model -> Html Msg 
home_page model = Html.main_ [ class "bg-gray-100 pb-32" ]
                [ header [ class "px-3 pt-20" ]
                                [ h1 [ class "max-w-2xl text-5xl font-bold tracking-wide leading-tight" ]
                                    [ div [class "text-indigo-700"] [text "Full Stack Developer"]
                                    , div [] [text "with a Passion tight"] 
                                    , div [class "text-indigo-700"] [text "Machine Learning"]
                                    ]
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
                            , design_section
                            , lessons_section
                            , languages_section
                            ]
            
language_page : Model -> Html Msg 
language_page model = Html.main_ [] [text "more languages"]
view : Model -> Browser.Document Msg
view model =
        { title = "Farooq A. Khan"
        , body = let 
                    _ = Debug.log "url: " model.url
                 in 
                    [ navigation model
                    , case model.url.path of 
                        "/" -> 
                            home_page model 
                        "/more-languages" -> 
                            language_page model 
                        _ -> 
                            text ""
                    ]
                              
        }

lessons_section : Html Msg 
lessons_section = 
        div [class "mt-32"]
            [ un_descriptive_heading "Lessons" 
            , div [class "mt-32"] [coming_soom]
            ]
design_section : Html Msg 
design_section = 
        div [ class "mt-32 bg-indigo-100 py-10 px-3"]
            [ un_descriptive_heading "Design"
            , div [class "mt-32" ] [coming_soom]

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
                , div []
                    [ a
                        [ class "text-indigo-700 hover:underline"
                        , href "#"
                        ]
                        [ text lang.link ]
                    ]
                ]
            , p [ class "max-w-lg text-gray-700" ] [ text lang.description ]
            , div [] [ projects_btn ]
            ]
        ]


projects_btn : Html Msg
projects_btn =
    button
        [ class "px-10 py-2 text-lg text-indigo-100 bg-indigo-500 rounded-lg shadow-md"
        ]
        [ text "Projects" ]

un_descriptive_heading : String -> Html Msg 
un_descriptive_heading h = 
                    div [ class "text-center text-xl uppercase font-bold tracking-widest text-indigo-700 py-3" 
                        ]
                        [ text h 
                        ]
languages_section : Html Msg
languages_section =
    div [ class "mt-32 px-3 bg-white py-20" ]
        [ div [ class "space-y-5 flex flex-col  " ]
            [ un_descriptive_heading "Language"
            , h2
                [ class "max-w-lg mx-auto md:text-center text-gray-900 font-bold tracking-wide leading-relaxed text-3xl" ]
                [ div []  [text "Using the Right Tools"], div [] [text "for the Right Job"]
                ]
            , p [ class "max-w-lg mx-auto text-lg text-gray-700" ] 
                [ text "Below is a Highlight of the languages I have Experience with and my preferences for the types of featues these laguages provide." 
                ]
            ]
        , div [ class "md:mx-auto max-w-xl grid mt-10 gap-y-10 md:grid-cols-2" ]
            -- Elm
            [ display_language elm_record

            -- Python
            , display_language python_record

            -- Haskell
            , display_language haskell_record

            -- Rust
            , display_language rust_record
            ]
        , div [ class "md:text-center md:mx-auto grid mt-12" ]
            [ a [ href "/more-languages", class "text-gray-700 underline font-bold" ] [ text "More Languages" ] ]
        ]



-- TODO: Style Form
-- TODO: Handle Form Submit
-- TODO: Looking into focus ring


form_label : String -> Html Msg
form_label txt =
    label [ class "text-indigo-100 font-semibold" ] [ text txt ]


sm_form_section : Html Msg
sm_form_section =
    div [ class "bg-indigo-600 md:hidden text-gray-400 mt-32 shadow-2xl rounded-lg mx-2 py-16 px-4" ]
        [ h3 [ class "text-white font-bold text-xl tracking-wide text-center" ] [ text "Contact Me" ]
        , Html.form [ action "#", class "max-w-xl  mx-auto flex flex-col space-y-10" ]
            [ div [ class "flex flex-col space-y-2" ]
                [ form_label "First Name"
                , input [ class "px-3 py-2 rounded-lg" ] []
                ]
            , div [ class "flex flex-col space-y-2" ]
                [ form_label "Email"
                , input [ type_ "email", class "px-3 py-2 rounded-lg" ] []
                ]
            , div [ class "flex flex-col space-y-2" ]
                [ form_label "Message"
                , textarea [ class "rounded-lg px-3 py-2", rows 4 ] []
                ]
            , button
                [ type_ "submit"
                , class "bg-white w-full px-4 py-3 rounded-lg font-bold text-indigo-800 tracking-wide hover:bg-indigo-100"
                ]
                [ text "Send Message" ]
            ]
        ]

coming_soom : Html Msg 
coming_soom = div [class "max-w-2xl mx-auto bg-white shadow-xl rounded-xl px-5 py-10 flex items-center flex-col space-y-5"] 
                  [img [class "w-80 h-80", src "./src/imgs/undraw_under_construction.svg"] []
                  , h4 [class "font-bold tracking-wide text-indigo-700 text-2xl"] [text "coming soon"]
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

haskell_img : String -> Html Msg 
haskell_img className = 
    img 
        [class className
        , src "https://images.unsplash.com/photo-1593642634443-44adaa06623a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=925&q=80"
        ] 
        []

my_songify_card : Html Msg
my_songify_card =
    div [ class "mx-auto max-w-2xl bg-white flex flex-col items-center rounded-lg shadow-xl py-5 space-y-10" ]
        [ div
            -- Image
            []
            [ my_songify_img "w-full shadow-lg -mt-20" ]
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
            [ code_btn "https://github.com/Farooq-azam-khan/my-songify", live_demo_btn "https://my-songify.herokuapp.com/" ]
        ]


scheming_in_haskell_card : Html Msg
scheming_in_haskell_card =
    div [ class "mx-auto max-w-2xl bg-white flex flex-col items-center rounded-lg shadow-xl py-5 space-y-10" ]
        [ div
            -- Image
            []
            [ haskell_img "w-full rounded-lg shadow-lg -mt-20" ]
        , div
            -- tags
            [ class "flex space-x-3" ]
            [ lang_tag "Haskell"
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
            [ code_btn "https://github.com/Farooq-azam-khan/scheme" ]
        ]

jarvis_img : String -> Html Msg 
jarvis_img className = 
    img [ class className
        , src "https://images.unsplash.com/photo-1581090464777-f3220bbe1b8b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"
        ]
        []
jarvis_the_typographer_card : Html Msg
jarvis_the_typographer_card =
    div [ class "mx-auto max-w-2xl bg-white flex flex-col items-center rounded-lg shadow-xl py-5 space-y-10" ]
        [ div
            -- Image
            []
            [ jarvis_img "w-full shadow-lg -mt-20" ]
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
            [ code_btn "https://github.com/Farooq-azam-khan/Jarvis-the-Typographer", live_demo_btn "https://farooq-azam-khan.github.io/Jarvis-the-Typographer/" ]
        ]


lang_tag : String -> Html Msg
lang_tag tag_nm =
    span [ class "inline-flex items-center text-indigo-100 bg-indigo-400 px-4 py-1 rounded-full" ] [ text tag_nm ]


code_btn : String -> Html Msg
code_btn gh_lnk =
    a
        [ href gh_lnk
        , class "text-white text-lg rounded-lg tracking-wide px-16 py-2 bg-indigo-600 hover:bg-indigo-700"
        , target "_blank"
        ]
        [ text "Code" ]


live_demo_btn : String -> Html Msg
live_demo_btn dmo_lnk =
    a
        [ href dmo_lnk
        , class "text-lg rounded-lg px-10 py-2 text-indigo-700 bg-indigo-100 border border-opacity-1 hover:bg-white hover:border hover:border-indigo-100"
        , target "_blank"
        ]
        [ text "Live Demo" ]


navigation : Model -> Html Msg
navigation model =
    nav [ class "relative px-3 py-4 bg-white shadow-lg" ]
        [ div [ class "flex justify-between items-center" ]
            [ div [ class "text-lg hover:underline cursor-pointer" ]
                [ a [ class "text-indigo-700 font-bold tracking-wider hover:text-indigo-600", href "#" ] [ text "Farooq A. Khan" ]
                ]
            , div []
                [ button [ onClick ToggleSmNavbar, class "text-indigo-700 hover:bg-indigo-800 hover:text-white rounded-lg px-1 py-1" ] [ menu_alt3 "w-8 h-8" ]
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
