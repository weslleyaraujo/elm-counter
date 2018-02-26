import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, href)

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

btn = "bg-blue hover:bg-blue-light text-white font-bold py-2 px-4 border-b-4 border-blue-dark hover:border-blue rounded"

view model =
    div [] [
        div [ class "flex justify-center p-4" ] [
              h1 [ class "text-xl text-center" ] [ text "Every application needs a counter" ]
          ]
      , div [ class "flex justify-center p-1 items-center" ] [
            div [ class "p-1"] [
                button [ class btn, onClick Increment ] [ text "Increment" ]
              ]
          , div [ class "p-1" ] [
              strong [] [ text (toString model) ]
            ]
          , div [ class "p-1" ] [
              button [ class btn, onClick Decrement ] [ text "Decrement" ]
            ]
        ]
      , div [ class "flex justify-center p-2" ] [
              p [ class "text-sl text-center" ] [ text "This counter was built in Elm" ]
          ]

      , div [ class "text-center" ] [
          a [ class "text-sm", href "http://github.com/weslleyaraujo/elm-counter" ] [ text "Github" ]
        ]
      ]

main =
    beginnerProgram { model = 0, view = view, update = update }
