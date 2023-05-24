module Main exposing (main, view)

import Assets.Icons exposing (..)
import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Svg exposing (path)
import Svg.Attributes as SvgAttr
import Url exposing (Url)


type alias Model =
    { key : Nav.Key
    }


type Msg
    = NoOp
    | ChangedUrl Url
    | ClickedLink Browser.UrlRequest


init : flags -> Url -> Nav.Key -> ( Model, Cmd Msg )
init _ _ key =
    ( { key = key }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        ChangedUrl _ ->
            ( model, Cmd.none )

        ClickedLink broswer_req ->
            case broswer_req of
                Browser.External href ->
                    ( model, Nav.load href )

                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )





blog_card : { blog_title : String, blog_description : String, blog_link : String } -> Html Msg
blog_card { blog_title, blog_description, blog_link } =
    div [ class "shadow-2xl max-w-sm p-6 bg-gray-100 border border-gray-200 rounded-lg " ]
        [ h3 [ class "mb-2 text-2xl font-bold tracking-tight text-gray-900 " ] [ text blog_title ]
        , p [ class "mb-3 font-normal text-gray-700 " ] [ text blog_description ]
        , a
            [ href blog_link
            , target "blank_"
            , class "inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-indigo-700 rounded-lg hover:bg-indigo-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-indigo-600 dark:hover:bg-indigo-700 dark:focus:ring-indgio-800"
            ]
            [ text "Read more"
            , Svg.svg
                [ attribute "aria-hidden" "true"
                , SvgAttr.class "w-4 h-4 ml-2 -mr-1"
                , SvgAttr.fill "currentColor"
                , SvgAttr.viewBox "0 0 20 20"
                ]
                [ path
                    [ SvgAttr.fillRule "evenodd"
                    , SvgAttr.d "M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                    , SvgAttr.clipRule "evenodd"
                    ]
                    []
                ]
            ]
        ]


interest_card : { interest_title : String, interest_detail : String } -> Html Msg
interest_card { interest_title, interest_detail } =
    div
        [ class "flex flex-col justify-between p-4 leading-normal"
        ]
        [ h3
            [ class "mb-2 text-xl font-bold tracking-tight text-gray-900 "
            ]
            [ text interest_title ]
        , p
            [ class "mb-3 text-lg font-normal text-gray-700"
            ]
            [ text interest_detail ]
        ]


section_gradient : String
section_gradient =
    "text-transparent bg-clip-text bg-gradient-to-r from-red-400 via-indigo-500 to-red-500"


view : Model -> Browser.Document Msg
view _ =
    { title = "Farooq Azam Khan"
    , body =
        [ main_ [ class "font-roboto font-sans" ]
            [ margin_content_component
                [ div [ class "" ]
                    [ div [ class "pt-20 flex items-center justify-between" ]
                        [ h2 [ class "text-indigo-700 text-2xl md:text-4xl  font-extralight" ]
                            [ text "Farooq A. Khan"
                            ]
                        , div
                            [ class "flex items-center space-x-2" ]
                            [ a [ target "_blank", href "https://github.com/Farooq-azam-khan" ] [ github_icon ]
                            , a [ target "_blank", href "https://www.linkedin.com/in/farooq-khan-46167bb5/" ]
                                [ img [ class "w-8 h-8", src "/linkedin-logo-512.webp" ] []
                                ]
                            ]
                        ]
                    , h1 [ class "text-transparent bg-clip-text bg-gradient-to-r from-indigo-400 to-red-500 text-5xl md:text-7xl font-bold" ] [ text "Software & Machine Learning Engineer" ]
                    , p
                        [ class "mt-14 md:mt-32 text-md md:text-xl italic leading-loose tracking-wider lg:max-w-3xl " ]
                        [ text "Machine Learning Researcher interested in "
                        , ul
                            [ class "grid grid-cols-1 md:grid-cols-2 md:gap-5 mt-5" ]
                            [ interest_card { interest_title = "Artificial Intelligence", interest_detail = "Machine Learning, Reinforcement Learning, NLP, MLOps." }
                            , interest_card { interest_title = "Software Engineering", interest_detail = "Prompt Egineering, Backend Development, Rust, Python, etc." }
                            , interest_card { interest_title = "Functional Programming", interest_detail = "Category Thoery, Elm Programming, Haskell, etc." }
                            , interest_card { interest_title = "Mathematics", interest_detail = "Fourier Analysis, Linear Albegra, Statistics, Graph Thoery, etc. " }
                            ]
                        ]
                    , div [ class " mt-32 md:mt-64 rounded-md" ]
                        [ h2 [ class <| section_gradient ++ " text-xl font-semibold tracking-wide uppercase" ]
                            [ text "Blog Highlights" ]
                        , div [ class "mt-5 md:mt-14 grid grid-cols-1 md:grid-cols-2 gap-y-14 md:gap-x-5 " ]
                            [ blog_card
                                { blog_title = "Term Frequency-Inverse Document Frequency", blog_description = "In this tutorial we will look at what TF and IDF are and how they can be use to process text data in Machine learning.", blog_link = "https://blog.farooqkhan.ca/tfidf" }
                            , blog_card
                                { blog_title = "Large Scale Vector Comparison"
                                , blog_description = "In this post, we will look at the quora qna dataset and aim to encode and compare all question pairs. The purpose of is to look at a real dataset."
                                , blog_link = "https://blog.farooqkhan.ca/cosine-similarity-pt-2"
                                }
                            , blog_card
                                { blog_title = "Comparing Vectors with Cosine Simlarity Function"
                                , blog_description = "This tutorial will focus on the math behind text vector similarity using numpy, pytorch, and stentence-transformers libraries in python."
                                , blog_link = "https://blog.farooqkhan.ca/cosine-similarity"
                                }
                            ]
                        ]
                    ]
                ]
            , section [ class "mt-32 md:mt-64 " ]
                [ margin_content_component
                    [ h2 [ class <| section_gradient ++ " text-indigo-500 text-lg font-semibold tracking-wide uppercase" ]
                        [ text "Personal Projects" ]
                    , ol [ class "mt-14 grid sm:grid-cols-2 lg:grid-cols-4 gap-2 sm:gap-5" ]
                        [ personal_project_component 
                            { project_description= Just "Development with Hasura, Elm, Python, Tailwindcss, Graphql, Vite", project_name = "Custom Tech Stack"
                            ,   github_link="https://github.com/Farooq-azam-khan/my_tech_stack_sample" }
                        , personal_project_component 
                            { project_name = "Haiku Generator"  , project_description = Nothing 
                            ,  github_link="https://github.com/Farooq-azam-khan/haiku/" }

                            {-                        li [ class "space-x-3 flex items-center " ]
                            [ span []
                                [ github_icon ]
                            , a
                                [ class "text-indigo-800 hover:text-indigo-900"
                                , target "blank_"
                                , href "https://github.com/Farooq-azam-khan/my_tech_stack_sample"
                                ]
                                [ text "Hasura, Elm, Graphql Techstack" ]
                                ]-}
                        , personal_project_component { project_description = Nothing , project_name = "Jarvis the Typographer", 
                            github_link = "https://github.com/Farooq-azam-khan/Jarvis-the-Typographer" }
                        , personal_project_component { project_description = Nothing, project_name = "D3Js Reference Tutorial", github_link = "https://github.com/Farooq-azam-khan/d3js-tutorials" }
                        , personal_project_component
                            { project_description = Nothing,  project_name = "Fourier Analysis Modules", github_link = "https://github.com/Farooq-azam-khan/fourier-analysis-modules" }
                        , personal_project_component { project_description = Nothing, project_name = "My Sonfigy", github_link = "https://github.com/Farooq-azam-khan/my-songify" }
                        , personal_project_component { project_description = Just "Practice making 'twitter-ui, 'twitch-ui', 'spotify-ui'", project_name = "Frontend Practice", github_link = "" }
                        , personal_project_component { project_name = "Chat App"
                                                     , project_description=Nothing
                                                     , github_link = "https://github.com/Farooq-azam-khan/chat-app-elm" 
                                                     }

                        ]
                    ]
                ]

            -- , section [ class "mt-64" ]
            --     [ margin_content_component
            --         [ h2 [ class <| section_gradient ++ " text-indigo-500 text-lg font-semibold tracking-wide uppercase" ]
            --             [ text "Programming Languages and Tools" ]
            --         , ol [ class "mt-14 grid gap-2 sm:gap-5 sm:grid-cols-2 lg:grid-cols-4 list-disc" ]
            --             [ li []
            --                 [ text "python"
            --                 , ol [ class "list-disc ml-5" ]
            --                     [ li [] [ text "numpy" ]
            --                     , li [] [ text "pandas" ]
            --                     , li [] [ text "matplotlib" ]
            --                     , li [] [ text "pytorch" ]
            --                     , li [] [ text "seaborn" ]
            --                     ]
            --                 ]
            --             , li []
            --                 [ text "elm"
            --                 , ol [ class "list-disc ml-5" ] [ li [] [ text "elm/graphql" ] ]
            --                 ]
            --             , li []
            --                 [ text "graphql / hasura"
            --                 ]
            --             , li [] [ text "Rust" ]
            --             , li [] [ text "Haskell" ]
            --             , li [] [ text "C" ]
            --             , li [] [ text "PostgreSql/Sqllite/pocket db" ]
            --             ]
            --         ]
            --     ]
            , section [ class "mt-32 md:my-64" ]
                [ margin_content_component
                    [ h2 [ class <| section_gradient ++ " text-indigo-500 text-lg font-semibold tracking-wide uppercase" ]
                        [ text "Book Recommendations" ]
                    , ol [ class "mt-14 grid gap-2 sm:gap-5 sm:grid-cols-2 lg:grid-cols-3 list-disc" ]
                        -- potential obj: image url, book name, author
                        [ li [] [ text "Elm in Action (difficulty: easy)" ]
                        , li [] [ text "Category Theory for Programmgers (difficulty: hard)" ]
                        , li [] [ text "Deep Learning (difficulty: hard)" ]
                        , li [] [ text "The Clean Coder (difficulty: easy)" ]
                        ]
                    ]
                ]
            ]
        ]
    }


margin_content_component : List (Html Msg) -> Html Msg
margin_content_component =
    div [ class "px-5 md:px-0 md:mx-auto md:max-w-3xl" ]


personal_project_component : { a | project_name : String, project_description: Maybe String, github_link : String } -> Html Msg
personal_project_component comp_data =
    a [ href comp_data.github_link, target "blank_"
      , class "transition duration-200 group bg-gray-100 hover:bg-indigo-900 hover:shadow-2xl  px-5 py-5 border border-gray-900 shadow-xl rounded-lg " ]
        [ div [class "flex space-x-3 justify-between"] [h3 
            [ class "text-gray-800 font-semibold tracking-wide text-lg group-hover:text-indigo-200"
            , target "blank_"
            , href comp_data.github_link
            ]
            [ text comp_data.project_name ]
            , span []
            [ github_icon ]]
        , case comp_data.project_description of 
            Just desc -> div [class "mt-5 group-hover:text-indigo-200"] [ text desc ] 
            Nothing -> text "" 
        ]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = ChangedUrl
        , onUrlRequest = ClickedLink
        }
