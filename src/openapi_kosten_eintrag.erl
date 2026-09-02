-module(openapi_kosten_eintrag).

-export([encode/1]).

-export_type([openapi_kosten_eintrag/0]).

-type openapi_kosten_eintrag() ::
    #{ 'beschreibung' := binary(),
       'betrag' := binary(),
       'datum' := binary(),
       'typ' := binary()
     }.

encode(#{ 'beschreibung' := Beschreibung,
          'betrag' := Betrag,
          'datum' := Datum,
          'typ' := Typ
        }) ->
    #{ 'beschreibung' => Beschreibung,
       'betrag' => Betrag,
       'datum' => Datum,
       'typ' => Typ
     }.
