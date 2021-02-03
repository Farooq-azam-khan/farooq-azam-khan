module Types exposing (..)
import Browser exposing (UrlRequest)
import Html exposing (..)
import Browser.Navigation as Nav 
import Url exposing (Url)


type alias Model =
    { show_sm_navbar : Bool
    , key : Nav.Key 
    , url : Url 
    }


type alias Language = 
                    { name: String 
                    , description: String
                    , link: String 
                    , image: String 
                    }




type Msg
    = NoOp
    | ToggleSmNavbar
    | LinkClicked UrlRequest
    | UrlChanged Url 
