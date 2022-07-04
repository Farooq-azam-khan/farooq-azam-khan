module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
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
    { title = "Farooq Azam Khan"
    , body =
        [ main_ []
            [ h1 []
                [ text "Farooq A. Khan Personal Site"
                ]
            , p [] [ text "Machine Learning Researcher interested in Artificail Intelligence, Software Engineering, Functional Programming, and Mathematics." ]
            , section []
                [ h2 [] [ text "Skills" ]
                ]
            , section []
                [ h2 [] [ text "Personal Projects" ]
                , ol []
                    [ li [] [ text "Blog" ]
                    , li [] [ text "Hasura, Elm, Graphql Techstack" ]
                    , li [] [ text "Jarvis the Typographer" ]
                    , li [] [ text "D3js reference" ]
                    , li [] [ text "fourier analysis" ]
                    , li [] [ text "My-Songfigy" ]
                    , li []
                        [ text "Website-Cloning w/ Tailwindcss"
                        , ol []
                            [ li [] [ text "twitch-ui" ]
                            , li [] [ text "spotify-ui" ]
                            , li [] [ text "twitter-ui" ]
                            ]
                        ]
                    ]
                ]
            , section []
                [ h2 [] [ text "Interests" ]
                , ol []
                    [ li []
                        [ text "Machine Learning"
                        , ol []
                            [ li [] [ text "Reinforcement Learning" ]
                            , li [] [ text "NLP" ]
                            , li [] [ text "MLOps" ]
                            ]
                        ]
                    , li [] [ text "Functional Programming" ]
                    , li [] [ text "Web Development" ]
                    ]
                ]
            , section []
                [ h2 [] [ text "Programming Languages" ]
                , ol []
                    [ li [] [ text "python" ]
                    , ol []
                        [ li [] [ text "numpy" ]
                        , li [] [ text "pandas" ]
                        , li [] [ text "matplotlib" ]
                        , li [] [ text "pytorch" ]
                        , li [] [ text "seaborn" ]
                        ]
                    , li [] [ text "elm" ]
                    , li [] [ text "Rust" ]
                    , li [] [ text "Haskell" ]
                    , li [] [ text "Java" ]
                    , li [] [ text "C" ]
                    , li [] [ text "PostgreSql/Sqllite" ]
                    ]
                ]
            , section []
                [ h2 [] [ text "Book Recommendations" ]
                , ol []
                    [ li [] [ text "Elm in Action (difficulty: easy)" ]
                    , li [] [ text "Category Theory for Programmigers (difficulty: hard)" ]
                    , li [] [ text "Deep Learning (difficulty: hard)" ]
                    , li [] [ text "The Clean Coder (difficulty: easy)" ]
                    , li [] [ text "Natural language Process in Action (not read yet)" ]
                    , li [] [ text "Reinforcement Learning an Introduction (not read yet)" ]
                    ]
                ]
            ]
        ]
    }


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
