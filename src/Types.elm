module Types exposing (..)


type alias Model =
    { languages : List Language
    }


type alias Language =
    { href : String
    , name : String
    }


type Msg
    = NoOp
