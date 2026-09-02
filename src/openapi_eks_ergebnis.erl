-module(openapi_eks_ergebnis).

-export([encode/1]).

-export_type([openapi_eks_ergebnis/0]).

-type openapi_eks_ergebnis() ::
    #{ 'gesamtergebnis' := binary(),
       'monate' := list(),
       'prognose_naechste_6_monate' := binary(),
       'summe_ausgaben' := binary(),
       'summe_einnahmen' := binary(),
       'zeitraum_bis' := binary(),
       'zeitraum_von' := binary()
     }.

encode(#{ 'gesamtergebnis' := Gesamtergebnis,
          'monate' := Monate,
          'prognose_naechste_6_monate' := PrognoseNaechste6Monate,
          'summe_ausgaben' := SummeAusgaben,
          'summe_einnahmen' := SummeEinnahmen,
          'zeitraum_bis' := ZeitraumBis,
          'zeitraum_von' := ZeitraumVon
        }) ->
    #{ 'gesamtergebnis' => Gesamtergebnis,
       'monate' => Monate,
       'prognose_naechste_6_monate' => PrognoseNaechste6Monate,
       'summe_ausgaben' => SummeAusgaben,
       'summe_einnahmen' => SummeEinnahmen,
       'zeitraum_bis' => ZeitraumBis,
       'zeitraum_von' => ZeitraumVon
     }.
