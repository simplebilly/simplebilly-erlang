-module(openapi_kosten_vorschau).

-export([encode/1]).

-export_type([openapi_kosten_vorschau/0]).

-type openapi_kosten_vorschau() ::
    #{ 'eintraege' := list(),
       'gesamt' := binary()
     }.

encode(#{ 'eintraege' := Eintraege,
          'gesamt' := Gesamt
        }) ->
    #{ 'eintraege' => Eintraege,
       'gesamt' => Gesamt
     }.
