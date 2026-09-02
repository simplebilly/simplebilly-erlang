-module(openapi_euer_zeile).

-export([encode/1]).

-export_type([openapi_euer_zeile/0]).

-type openapi_euer_zeile() ::
    #{ 'abschnitt' := binary(),
       'betrag' := binary(),
       'bezeichnung' := binary(),
       'zeile' := integer()
     }.

encode(#{ 'abschnitt' := Abschnitt,
          'betrag' := Betrag,
          'bezeichnung' := Bezeichnung,
          'zeile' := Zeile
        }) ->
    #{ 'abschnitt' => Abschnitt,
       'betrag' => Betrag,
       'bezeichnung' => Bezeichnung,
       'zeile' => Zeile
     }.
