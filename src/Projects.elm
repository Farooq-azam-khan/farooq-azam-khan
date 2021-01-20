module Projects exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)

tag : String -> Html Msg 
tag val = span [] [text val]
projectsView : Model -> Html Msg 
projectsView model = div [] [h2 [class "text-center text-3xl font-semibold"] [text "Projects"]
                        , ul [] [li [] [text "Elm Todo MVC"]
                                , li [] [text "Machine Learning"]
                                , li [] [text "Jarvis the Typogropher"]
                                , li [] [text "D3-Js Tutorial"]
                                , li [] [text "Entertainment Tracker", tag "Coming Soon"]
                                , li [] [text "Vue Todo MVC"]
                                , li [] [text "Kaggle Projects"]
                                , li [] [text "Machine Learning Algorithms"]
                                , li [] [text "Project Gemini", text "description: A Google Form like app"]
                                , li [] [text "Scheming in Haskell"]
                                , li [] [text "Sports Stats Tracker"]
                        ]
                        , h3 [class "text-center text-xl font-thing"] [text "Design Projects"]
                        , ul [] [li [] [text "Twitch UI Clone"]
                                , li [] [text "Spotify UI Clone"]
                                , li [] [text "Twitter Clone"]
                        ]
                    ]
