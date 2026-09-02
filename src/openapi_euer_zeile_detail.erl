-module(openapi_euer_zeile_detail).

-export([encode/1]).

-export_type([openapi_euer_zeile_detail/0]).

-type openapi_euer_zeile_detail() ::
    #{ 'abschnitt' := binary(),
       'betrag_gesamt' := binary(),
       'bezeichnung' := binary(),
       'kategorien' := list(),
       'zeile' := integer()
     }.

encode(#{ 'abschnitt' := Abschnitt,
          'betrag_gesamt' := BetragGesamt,
          'bezeichnung' := Bezeichnung,
          'kategorien' := Kategorien,
          'zeile' := Zeile
        }) ->
    #{ 'abschnitt' => Abschnitt,
       'betrag_gesamt' => BetragGesamt,
       'bezeichnung' => Bezeichnung,
       'kategorien' => Kategorien,
       'zeile' => Zeile
     }.
