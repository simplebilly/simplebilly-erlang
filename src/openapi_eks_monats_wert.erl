-module(openapi_eks_monats_wert).

-export([encode/1]).

-export_type([openapi_eks_monats_wert/0]).

-type openapi_eks_monats_wert() ::
    #{ 'ausgaben' := binary(),
       'einnahmen' := binary(),
       'ergebnis' := binary(),
       'monat' := binary()
     }.

encode(#{ 'ausgaben' := Ausgaben,
          'einnahmen' := Einnahmen,
          'ergebnis' := Ergebnis,
          'monat' := Monat
        }) ->
    #{ 'ausgaben' => Ausgaben,
       'einnahmen' => Einnahmen,
       'ergebnis' => Ergebnis,
       'monat' => Monat
     }.
