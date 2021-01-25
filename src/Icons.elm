module Icons exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (attribute)
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Types exposing (Msg)


menu_alt3 : String -> Html Msg
menu_alt3 className =
    svg [ class className, fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ Svg.path [ d "M4 8h16M4 16h16", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]


close : String -> Html Msg
close className =
    svg [ class className, fill "none", attribute "stroke" "currentColor", viewBox "0 0 24 24", attribute "xmlns" "http://www.w3.org/2000/svg" ]
        [ Svg.path [ d "M6 18L18 6M6 6l12 12", attribute "stroke-linecap" "round", attribute "stroke-linejoin" "round", attribute "stroke-width" "2" ]
            []
        ]
