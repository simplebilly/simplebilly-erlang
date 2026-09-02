-module(openapi_gewinnverwendungs_report).

-export([encode/1]).

-export_type([openapi_gewinnverwendungs_report/0]).

-type openapi_gewinnverwendungs_report() ::
    #{ 'bilanzgewinn' := binary(),
       'gesetzliche_ruecklage_bestand' := binary(),
       'gesetzliche_ruecklage_cap' := binary(),
       'gesetzliche_ruecklage_nach' := binary(),
       'gesetzliche_ruecklage_soll' := binary(),
       'gezeichnetes_kapital' := binary(),
       'jahresueberschuss' := binary(),
       'year' := integer(),
       'zeilen' := list()
     }.

encode(#{ 'bilanzgewinn' := Bilanzgewinn,
          'gesetzliche_ruecklage_bestand' := GesetzlicheRuecklageBestand,
          'gesetzliche_ruecklage_cap' := GesetzlicheRuecklageCap,
          'gesetzliche_ruecklage_nach' := GesetzlicheRuecklageNach,
          'gesetzliche_ruecklage_soll' := GesetzlicheRuecklageSoll,
          'gezeichnetes_kapital' := GezeichnetesKapital,
          'jahresueberschuss' := Jahresueberschuss,
          'year' := Year,
          'zeilen' := Zeilen
        }) ->
    #{ 'bilanzgewinn' => Bilanzgewinn,
       'gesetzliche_ruecklage_bestand' => GesetzlicheRuecklageBestand,
       'gesetzliche_ruecklage_cap' => GesetzlicheRuecklageCap,
       'gesetzliche_ruecklage_nach' => GesetzlicheRuecklageNach,
       'gesetzliche_ruecklage_soll' => GesetzlicheRuecklageSoll,
       'gezeichnetes_kapital' => GezeichnetesKapital,
       'jahresueberschuss' => Jahresueberschuss,
       'year' => Year,
       'zeilen' => Zeilen
     }.
