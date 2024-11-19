module Route.Index exposing (ActionData, Data, Model, Msg, route)

import BackendTask exposing (BackendTask)
import FatalError exposing (FatalError)
import Head
import Head.Seo as Seo
import Html exposing (..)
import Html.Attributes as Attr exposing (..)
import Pages.Url
import PagesMsg exposing (PagesMsg)
import Route
import RouteBuilder exposing (App, StatelessRoute)
import Shared
import Svg exposing (path)
import Svg.Attributes as SvgAttr
import UrlPath
import View exposing (View)


type alias Model =
    {}


type alias Msg =
    ()


type alias RouteParams =
    {}


type alias Data =
    { message : String
    }


type alias ActionData =
    {}


route : StatelessRoute RouteParams Data ActionData
route =
    RouteBuilder.single
        { head = head
        , data = data
        }
        |> RouteBuilder.buildNoState { view = view }


data : BackendTask FatalError Data
data =
    BackendTask.succeed Data
        |> BackendTask.andMap
            (BackendTask.succeed "Hello!")


head :
    App Data ActionData RouteParams
    -> List Head.Tag
head app =
    Seo.summary
        { canonicalUrlOverride = Nothing
        , siteName = "farooq-a-khan-portfolio"
        , image =
            { url = [ "images", "icon-png.png" ] |> UrlPath.join |> Pages.Url.fromPath
            , alt = "idk..."
            , dimensions = Nothing
            , mimeType = Nothing
            }
        , description = "Personal/Portfolio site |> Farooq A. Khan"
        , locale = Nothing
        , title = "Farooq Khan"
        }
        |> Seo.website


view :
    App Data ActionData RouteParams
    -> Shared.Model
    -> View (PagesMsg Msg)
view app shared =
    { title = "Farooq Azam Khan | Home"
    , body =
        [ main_ [ class "font-roboto font-sans bg-gray-100 py-20" ]
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
                    , h1 [ class "text-transparent bg-clip-text bg-gradient-to-r from-indigo-400 to-red-500 text-5xl md:text-7xl font-bold" ] [ text "Machine Learning & Software Engineer" ]
                    , p
                        [ class "mt-14 md:mt-32 text-md md:text-xl italic leading-loose tracking-wider lg:max-w-3xl " ]
                        [ text "Machine Learning Researcher interested in "
                        , ul
                            [ class "grid grid-cols-1 md:grid-cols-2 md:gap-5 mt-5" ]
                            [ interest_card { interest_title = "Artificial Intelligence", interest_detail = "Machine Learning, Reinforcement Learning, NLP, MLOps." }
                            , interest_card { interest_title = "Software Engineering", interest_detail = "Prompt Egineering, Backend Development, Rust, Python, Graph Database, Scalable Model Deployment." }
                            , interest_card { interest_title = "Functional Programming", interest_detail = "Category Thoery, Elm Programming, Haskell." }
                            , interest_card { interest_title = "Mathematics", interest_detail = "Fourier Analysis, Linear Albegra, Statistics, Graph Thoery. " }
                            ]
                        ]
                    , div [ class " mt-32 md:mt-64 rounded-md" ]
                        [ h2 [ class <| section_gradient ++ " text-xl font-semibold tracking-wide uppercase" ]
                            [ text "Blog Highlights" ]
                        , div
                            [ class "mt-5 md:mt-14 grid grid-cols-1 gap-y-20" ]
                            [ blog_card
                                { blog_title = "Term Frequency-Inverse Document Frequency"
                                , blog_description = "In this tutorial we will look at what TF and IDF are and how they can be use to process text data for Machine learning."
                                , blog_link = "https://blog.farooqkhan.ca/tfidf"
                                }
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
            , personal_project_list_component

            -- , section [ class "mt-32 md:my-64" ]
            --     [ margin_content_component
            --         [ h2 [ class <| section_gradient ++ " text-indigo-500 text-lg font-semibold tracking-wide uppercase" ]
            --             [ text "Book Recommendations" ]
            --         , ol [ class "mt-14 grid gap-2 sm:gap-5 sm:grid-cols-2 lg:grid-cols-3 list-disc" ]
            --             -- potential obj: image url, book name, author
            --             [ li [] [ text "Elm in Action (difficulty: easy)" ]
            --             , li [] [ text "Category Theory for Programmgers (difficulty: hard)" ]
            --             , li [] [ text "Deep Learning (difficulty: hard)" ]
            --             , li [] [ text "The Clean Coder (difficulty: easy)" ]
            --             , li [] [ text "Refactoring UI (difficulty: easy)" ]
            --             ]
            --         ]
            --     ]
            ]
        ]
    }


blog_card :
    { blog_title : String
    , blog_description : String
    , blog_link : String
    }
    -> Html (PagesMsg Msg)
blog_card { blog_title, blog_description, blog_link } =
    div [ class "bg-white space-y-5 shadow-xl p-6 rounded-lg " ]
        [ h3 [ class "mb-2 text-xl lg:text-2xl font-bold tracking-tight text-gray-900" ] [ text blog_title ]
        , p [ class "max-w-lg mb-3 font-normal text-gray-600 " ] [ text blog_description ]
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


interest_card : { interest_title : String, interest_detail : String } -> Html (PagesMsg Msg)
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


width_height : String
width_height =
    "24"


github_icon : Html msg
github_icon =
    Svg.svg
        [ SvgAttr.width width_height
        , SvgAttr.height width_height

        -- , SvgAttr.viewBox "0 0 24 24"
        , SvgAttr.strokeWidth "1"
        ]
        [ path
            [ SvgAttr.d "M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm2.218 18.616c-.354.069-.468-.149-.468-.336v-1.921c0-.653-.229-1.079-.481-1.296 1.56-.173 3.198-.765 3.198-3.454 0-.765-.273-1.389-.721-1.879.072-.177.312-.889-.069-1.853 0 0-.587-.188-1.923.717-.561-.154-1.159-.231-1.754-.234-.595.003-1.193.08-1.753.235-1.337-.905-1.925-.717-1.925-.717-.379.964-.14 1.676-.067 1.852-.448.49-.722 1.114-.722 1.879 0 2.682 1.634 3.282 3.189 3.459-.2.175-.381.483-.444.936-.4.179-1.413.488-2.037-.582 0 0-.37-.672-1.073-.722 0 0-.683-.009-.048.426 0 0 .46.215.777 1.024 0 0 .405 1.25 2.353.826v1.303c0 .185-.113.402-.462.337-2.782-.925-4.788-3.549-4.788-6.641 0-3.867 3.135-7 7-7s7 3.133 7 7c0 3.091-2.003 5.715-4.782 6.641z"
            ]
            []
        ]


link_icon : String -> Html msg
link_icon class =
    Svg.svg
        [ Attr.attribute "aria-hidden" "true"
        , SvgAttr.fill "none"
        , SvgAttr.stroke "currentColor"
        , SvgAttr.strokeWidth "1.5"
        , SvgAttr.viewBox "0 0 24 24"
        , SvgAttr.class class
        ]
        [ path
            [ SvgAttr.d "M13.19 8.688a4.5 4.5 0 011.242 7.244l-4.5 4.5a4.5 4.5 0 01-6.364-6.364l1.757-1.757m13.35-.622l1.757-1.757a4.5 4.5 0 00-6.364-6.364l-4.5 4.5a4.5 4.5 0 001.242 7.244"
            , SvgAttr.strokeLinecap "round"
            , SvgAttr.strokeLinejoin "round"
            ]
            []
        ]


section_gradient : String
section_gradient =
    "text-transparent bg-clip-text bg-gradient-to-r from-red-400 via-indigo-500 to-red-500"


margin_content_component : List (Html (PagesMsg Msg)) -> Html (PagesMsg Msg)
margin_content_component =
    div [ class "px-5 md:px-0 md:mx-auto md:max-w-3xl" ]


github_dark : Html msg
github_dark =
    Svg.svg
        [ -- SvgAttr.width "60"
          --, SvgAttr.height "60"
          SvgAttr.fill "none"
        , SvgAttr.viewBox "0 0 40 40"
        ]
        [ path
            [ SvgAttr.fillRule "evenodd"
            , SvgAttr.clipRule "evenodd"
            , SvgAttr.d "M48.854 0C21.839 0 0 22 0 49.217c0 21.756 13.993 40.172 33.405 46.69 2.427.49 3.316-1.059 3.316-2.362 0-1.141-.08-5.052-.08-9.127-13.59 2.934-16.42-5.867-16.42-5.867-2.184-5.704-5.42-7.17-5.42-7.17-4.448-3.015.324-3.015.324-3.015 4.934.326 7.523 5.052 7.523 5.052 4.367 7.496 11.404 5.378 14.235 4.074.404-3.178 1.699-5.378 3.074-6.6-10.839-1.141-22.243-5.378-22.243-24.283 0-5.378 1.94-9.778 5.014-13.2-.485-1.222-2.184-6.275.486-13.038 0 0 4.125-1.304 13.426 5.052a46.97 46.97 0 0 1 12.214-1.63c4.125 0 8.33.571 12.213 1.63 9.302-6.356 13.427-5.052 13.427-5.052 2.67 6.763.97 11.816.485 13.038 3.155 3.422 5.015 7.822 5.015 13.2 0 18.905-11.404 23.06-22.324 24.283 1.78 1.548 3.316 4.481 3.316 9.126 0 6.6-.08 11.897-.08 13.526 0 1.304.89 2.853 3.316 2.364 19.412-6.52 33.405-24.935 33.405-46.691C97.707 22 75.788 0 48.854 0z"
            , SvgAttr.fill "#24292f"
            ]
            []
        ]



{-
   github_light : Html msg
   github_light =
       Svg.svg
           [ SvgAttr.width "24"
           , SvgAttr.height "24"
           , SvgAttr.viewBox "0 0 24 24"
           , SvgAttr.class ""
           ]
           [ path
               [ SvgAttr.style "stroke: white; fill: white"
               , SvgAttr.d "M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 6c-3.313 0-6 2.686-6 6 0 2.651 1.719 4.9 4.104 5.693.3.056.396-.13.396-.289v-1.117c-1.669.363-2.017-.707-2.017-.707-.272-.693-.666-.878-.666-.878-.544-.373.041-.365.041-.365.603.042.92.619.92.619.535.917 1.403.652 1.746.499.054-.388.209-.652.381-.802-1.333-.152-2.733-.667-2.733-2.965 0-.655.234-1.19.618-1.61-.062-.153-.268-.764.058-1.59 0 0 .504-.161 1.65.615.479-.133.992-.199 1.502-.202.51.002 1.023.069 1.503.202 1.146-.776 1.648-.615 1.648-.615.327.826.121 1.437.06 1.588.385.42.617.955.617 1.61 0 2.305-1.404 2.812-2.74 2.96.216.186.412.551.412 1.111v1.646c0 .16.096.347.4.288 2.383-.793 4.1-3.041 4.1-5.691 0-3.314-2.687-6-6-6z"
               ]
               []
           ]

-}


personal_project_component :
    { a
        | name : String
        , description : Maybe (Html (PagesMsg Msg))
        , github_link : String
        , maybe_site : Maybe String
    }
    -> Html (PagesMsg Msg)
personal_project_component comp_data =
    div [ class "bg-white shadow-lg p-4 rounded-lg" ]
        [ div [ class "flex space-x-3 justify-between items-center" ]
            [ h3
                [ class "text-gray-700 text-lg mb-2 font-semibold "
                , target "blank_"
                , href comp_data.github_link
                ]
                [ text comp_data.name ]
            , span [ class "flex items-center space-x-3" ]
                [ Maybe.withDefault (text "") <| Maybe.map (\link -> a [ target "blank_", href link ] [ link_icon "w-5 h-5" ]) comp_data.maybe_site
                , a
                    [ href comp_data.github_link
                    , target "blank_"
                    , class "rounded-lg"
                    ]
                    [ github_icon ]
                ]
            ]
        , case comp_data.description of
            Just desc ->
                div [ class "text-gray-600 mt-5 max-w-lg" ] [ desc ]

            Nothing ->
                text ""
        ]


personal_project_list_component : Html (PagesMsg Msg)
personal_project_list_component =
    section [ class "mt-32 " ]
        [ margin_content_component
            [ h2 [ class <| section_gradient ++ " text-indigo-500 text-lg font-semibold tracking-wide uppercase" ]
                [ text "Personal Projects" ]
            , ol [ class "grid gap-y-10 sm:gap-x-10 sm:grid-cols-2 mt-14" ]
                (List.map personal_project_component personal_projects)
            ]
        ]


type alias PersonalProject =
    { name : String
    , description : Maybe (Html (PagesMsg Msg))
    , github_link : String
    , maybe_site : Maybe String
    }


personal_projects : List PersonalProject
personal_projects =
    [ { description = Just (div [] [ text "Full Stack web app development with: Python FastApi, Tailwindcss, and Vite." ])
      , name = "Custom Tech Stack"
      , github_link = "https://github.com/Farooq-azam-khan/fastapi-elm-tailwind-techstack"
      , maybe_site = Nothing
      }
    , { name = "Garbage Classification with CNN"
      , description = Just (div [] [ text "Efficient Net finetuned on Classifying different types of Garbage." ])
      , github_link = "https://github.com/Farooq-azam-khan/cps803-course-project"
      , maybe_site = Nothing
      }
    , { name = "Haiku Generator"
      , description = Just (div [] [ text "SPA app designed to generate Haiku's with LLM" ])
      , github_link = "https://github.com/Farooq-azam-khan/haiku/"
      , maybe_site = Nothing
      }
    , { name = "D3Js Reference Tutorial"
      , description = Just (div [] [ text "Web app to reference D3 library and its many features." ])
      , github_link = "https://github.com/Farooq-azam-khan/d3js-tutorials"
      , maybe_site = Just "https://farooq-azam-khan.github.io/d3js-tutorials/"
      }

    -- , { description = Nothing
    --   , name = "Fourier Analysis Modules"
    --   , github_link = "https://github.com/Farooq-azam-khan/fourier-analysis-modules"
    --   }
    , { description = Just (div [] [ text "A full-stack application built to be a user-friendly front-end interface with a robust back-end architecture with feature like playlist create and user authentication." ])
      , name = "My Sonfigy"
      , github_link = "https://github.com/Farooq-azam-khan/my-songify"
      , maybe_site = Nothing
      }
--    , { description = Just (div [] [ ol [] [ text "Practice making 'twitter-ui', 'twitch-ui', 'spotify-ui'" ] ])
--      , name = "Frontend Practice"
--      , github_link = ""
--      , maybe_site = Nothing
--      }
    , { name = "Chat App"
      , description = Just (div [] [ text "A Chat application built with elm, expressjs, and websockets." ])
      , github_link = "https://github.com/Farooq-azam-khan/chat-app-elm"
      , maybe_site = Nothing
      }
    , { name = "Twitch Python Discord Bot"
      , description = Just (div [] [ text "Discord bot built with Python" ])
      , github_link = "https://github.com/Farooq-azam-khan/twitch-api-discord-bot"
      , maybe_site = Nothing
      }
    , { name = "Rust Tauri App"
      , description = Just (div [] [ text "Experimental app designed to test the features offered by Tauri library" ])
      , github_link = "https://github.com/Farooq-azam-khan/color-picker-tauri-test-project"
      , maybe_site = Nothing
      }
    ]
