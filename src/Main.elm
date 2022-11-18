module Main exposing (main)

import Assets.Icons exposing (..)
import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (class, href, target)
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

        ChangedUrl url ->
            ( model, Cmd.none )

        ClickedLink broswer_req ->
            case broswer_req of
                Browser.External href ->
                    ( model, Nav.load href )

                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )


view : Model -> Browser.Document Msg
view model =
    { title = "Farooq Azam Khan | Home"
    , body =
        [ main_ [ class "" ]
            -- "mx-auto max-w-3xl lg:max-w-4xl 2xl:max-w-5xl" ]
            [ margin_content_component
                [ h1 [ class "pt-20 px-10 text-indigo-900 text-4xl lg:text-5xl 2xl:text-6xl text-indigo font-bold mb-10" ]
                    [ text "Farooq A. Khan |> Personal Site"
                    ]
                , p
                    [ class "pb-20 px-10 italic font-light text-lg lg:text-xl leading-loose tracking-wider lg:max-w-3xl " ]
                    [ text "Machine Learning Researcher interested in "
                    , span [ class "text-indigo-700" ] [ text "Artificail Intelligence" ]
                    , text ", "
                    , span [ class "text-indigo-700" ] [ text "Software Engineering" ]
                    , text ", "
                    , span [ class "text-indigo-700" ] [ text "Functional Programming" ]
                    , text ", and "
                    , span [ class "text-indigo-700" ] [ text "Mathematics" ]
                    , text "."
                    ]
                ]
            , section [ class "flex items-center justify-center py-20 bg-gray-900 text-white" ]
                [ margin_content_component
                    [ a
                        [ class "px-10 py-2 text-indigo-900 bg-indigo-100 hover:bg-indigo-500 hover:text-indigo-100"
                        , target "blank_"
                        , href "https://blog-iota-three.vercel.app/"
                        ]
                        [ text "Read My Blog" ]
                    ]
                ]
            , section [ class "py-20 px-10 bg-indigo-100" ]
                [ margin_content_component
                    [ section_heading_component "Personal Projects"
                    , ol [ class "grid sm:grid-cols-2 lg:grid-cols-4 gap-2 sm:gap-5" ]
                        [ li [ class "space-x-3 flex items-center " ]
                            [ span []
                                [ github_icon ]
                            , a
                                [ class "text-indigo-800 hover:text-indigo-900"
                                , target "blank_"
                                , href "https://github.com/Farooq-azam-khan/my_tech_stack_sample"
                                ]
                                [ text "Hasura, Elm, Graphql Techstack" ]
                            ]
                        , personal_project_component { project_name = "Jarvis the Typographer", github_link = "https://github.com/Farooq-azam-khan/Jarvis-the-Typographer" }
                        , personal_project_component { project_name = "D3Js Reference Tutorial", github_link = "https://github.com/Farooq-azam-khan/d3js-tutorials" }
                        , personal_project_component
                            { project_name = "Fourier Analysis Modules", github_link = "https://github.com/Farooq-azam-khan/fourier-analysis-modules" }
                        , personal_project_component { project_name = "My Sonfigy", github_link = "https://github.com/Farooq-azam-khan/my-songify" }
                        , li []
                            [ text "Frontend Practice w/ elm/Tailwindcss"
                            , ol [ class "ml-10 list-disc" ]
                                [ li [] [ text "twitch-ui" ]
                                , li [] [ text "spotify-ui" ]
                                , li [] [ text "twitter-ui" ]
                                ]
                            ]
                        ]
                    , personal_project_component { project_name = "Chat App", github_link = "https://github.com/Farooq-azam-khan/chat-app-elm" }
                    ]
                ]
            , section [ class "py-20 px-10 " ]
                [ margin_content_component
                    [ h2 [ class "font-semibold text-2xl pb-10" ] [ text "Interests" ]
                    , ol [ class "grid gap-2 sm:gap-5 sm:grid-cols-2 lg:grid-cols-4 list-disc" ]
                        [ li []
                            [ text "Machine Learning"
                            , ol [ class "list-disc ml-5" ]
                                [ li [] [ text "Reinforcement Learning" ]
                                , li [] [ text "NLP" ]
                                , li [] [ text "MLOps" ]
                                , li [] [ text "Statistics" ]
                                , li [] [ text "Linear Algebra" ]
                                ]
                            ]
                        , li []
                            [ text "Functional Programming"
                            , ol [ class "list-disc ml-5" ]
                                [ li [] [ text "Category Theory" ] ]
                            ]
                        , li [] [ text "Web Development" ]
                        , li [] [ text "Graph Theory" ]
                        , li []
                            [ text "Fourier Analysis"
                            ]
                        ]
                    ]
                ]
            , section [ class "py-20 px-10 bg-gray-900 text-white" ]
                [ margin_content_component
                    [ h2 [ class "font-semibold text-2xl pb-10" ] [ text "Programming Languages and Tools" ]
                    , ol [ class "grid gap-2 sm:gap-5 sm:grid-cols-2 lg:grid-cols-4 list-disc" ]
                        [ li []
                            [ text "python"
                            , ol [ class "list-disc ml-5" ]
                                [ li [] [ text "numpy" ]
                                , li [] [ text "pandas" ]
                                , li [] [ text "matplotlib" ]
                                , li [] [ text "pytorch" ]
                                , li [] [ text "seaborn" ]
                                ]
                            ]
                        , li []
                            [ text "elm"
                            , ol [ class "list-disc ml-5" ] [ li [] [ text "elm/graphql" ] ]
                            ]
                        , li [] [ text "Rust" ]
                        , li [] [ text "Haskell" ]
                        , li [] [ text "C" ]
                        , li [] [ text "PostgreSql/Sqllite" ]
                        ]
                    ]
                ]
            , section [ class "py-20 px-10 bg-indigo-100" ]
                [ margin_content_component
                    [ section_heading_component "Book Recommendations"
                    , ol [ class "grid gap-2 sm:gap-5 sm:grid-cols-2 lg:grid-cols-3 list-disc" ]
                        -- potential obj: image url, book name, author
                        [ li [] [ text "Elm in Action (difficulty: easy)" ]
                        , li [] [ text "Category Theory for Programmgers (difficulty: hard)" ]
                        , li [] [ text "Deep Learning (difficulty: hard)" ]
                        , li [] [ text "The Clean Coder (difficulty: easy)" ]
                        , li [] [ text "Natural language Process in Action (not read yet)" ]
                        , li [] [ text "Reinforcement Learning an Introduction (not read yet)" ]
                        ]
                    ]
                ]
            ]
        ]
    }


margin_content_component : List (Html Msg) -> Html Msg
margin_content_component =
    div [ class "mx-auto max-w-3xl" ]


section_heading_component : String -> Html Msg
section_heading_component val =
    h2 [ class "font-semibold text-2xl pb-10 sm:text-3xl" ] [ text val ]


personal_project_component : { a | project_name : String, github_link : String } -> Html Msg
personal_project_component comp_data =
    li [ class "space-x-3 flex items-center" ]
        [ span []
            [ github_icon ]
        , a
            [ class "text-indigo-800 hover:text-indigo-900"
            , target "blank_"
            , href comp_data.github_link
            ]
            [ text comp_data.project_name ]
        ]


subscriptions : Model -> Sub Msg
subscriptions model =
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
