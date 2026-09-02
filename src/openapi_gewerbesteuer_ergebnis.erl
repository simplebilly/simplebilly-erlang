-module(openapi_gewerbesteuer_ergebnis).

-export([encode/1]).

-export_type([openapi_gewerbesteuer_ergebnis/0]).

-type openapi_gewerbesteuer_ergebnis() ::
    #{ 'freibetrag' := binary(),
       'gesamtbelastung' := binary(),
       'gewerbeertrag' := binary(),
       'hebesatz' := binary(),
       'jahr' := integer(),
       'koerperschaftsteuer' := binary(),
       'land' := binary(),
       'messbetrag' := binary(),
       'steuer' := binary(),
       'steuer_art' := binary()
     }.

encode(#{ 'freibetrag' := Freibetrag,
          'gesamtbelastung' := Gesamtbelastung,
          'gewerbeertrag' := Gewerbeertrag,
          'hebesatz' := Hebesatz,
          'jahr' := Jahr,
          'koerperschaftsteuer' := Koerperschaftsteuer,
          'land' := Land,
          'messbetrag' := Messbetrag,
          'steuer' := Steuer,
          'steuer_art' := SteuerArt
        }) ->
    #{ 'freibetrag' => Freibetrag,
       'gesamtbelastung' => Gesamtbelastung,
       'gewerbeertrag' => Gewerbeertrag,
       'hebesatz' => Hebesatz,
       'jahr' => Jahr,
       'koerperschaftsteuer' => Koerperschaftsteuer,
       'land' => Land,
       'messbetrag' => Messbetrag,
       'steuer' => Steuer,
       'steuer_art' => SteuerArt
     }.
