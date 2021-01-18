module Types exposing (..)


type alias Model =
    { languages : List Language
    }


type alias Language =
    { href : String
    , name : String
    , image : Maybe String
    }


type Msg
    = NoOp
