-module(openapi_euer_ergebnis).

-export([encode/1]).

-export_type([openapi_euer_ergebnis/0]).

-type openapi_euer_ergebnis() ::
    #{ 'anlage_zugaenge' := binary(),
       'gewinn_verlust' := binary(),
       'jahr' := integer(),
       'summe_ausgaben' := binary(),
       'summe_einnahmen' := binary(),
       'zeilen' := list()
     }.

encode(#{ 'anlage_zugaenge' := AnlageZugaenge,
          'gewinn_verlust' := GewinnVerlust,
          'jahr' := Jahr,
          'summe_ausgaben' := SummeAusgaben,
          'summe_einnahmen' := SummeEinnahmen,
          'zeilen' := Zeilen
        }) ->
    #{ 'anlage_zugaenge' => AnlageZugaenge,
       'gewinn_verlust' => GewinnVerlust,
       'jahr' => Jahr,
       'summe_ausgaben' => SummeAusgaben,
       'summe_einnahmen' => SummeEinnahmen,
       'zeilen' => Zeilen
     }.
