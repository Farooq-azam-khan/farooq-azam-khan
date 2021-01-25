module Types exposing (..)


type alias Model =
    { languages : List Language
    , show_sm_navbar : Bool
    }


type alias Language =
    { href : String
    , name : String
    , image : Maybe String
    }


type Msg
    = NoOp
    | ToggleSmNavbar
