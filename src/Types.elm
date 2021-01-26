module Types exposing (..)


type alias Model =
    { show_sm_navbar : Bool
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
