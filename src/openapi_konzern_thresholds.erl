-module(openapi_konzern_thresholds).

-export([encode/1]).

-export_type([openapi_konzern_thresholds/0]).

-type openapi_konzern_thresholds() ::
    #{ 'bilanzsumme' := binary(),
       'mitarbeiter' := integer(),
       'netto_umsatz' := binary()
     }.

encode(#{ 'bilanzsumme' := Bilanzsumme,
          'mitarbeiter' := Mitarbeiter,
          'netto_umsatz' := NettoUmsatz
        }) ->
    #{ 'bilanzsumme' => Bilanzsumme,
       'mitarbeiter' => Mitarbeiter,
       'netto_umsatz' => NettoUmsatz
     }.
