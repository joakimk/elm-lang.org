-- Go to <https://guide.elm-lang.org> for a structured introduction to Elm.
-- It explains what is going on in this program and how to extend it!

import Browser
import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)



main : Program () Model Msg
main =
  Browser.sandbox
    { model = model
    , update = update
    , view = view
    }



-- MODEL


type alias Model =
  { count : Int
  }


model : Model
model =
  { count = 0 }



-- UPDATE


type Msg
  = Increment
  | Decrement


update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      { model | count = model.count + 1 }

    Decrement ->
      { model | count = model.count - 1 }



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model.count) ]
    , button [ onClick Increment ] [ text "+" ]
    ]