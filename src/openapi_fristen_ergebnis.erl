-module(openapi_fristen_ergebnis).

-export([encode/1]).

-export_type([openapi_fristen_ergebnis/0]).

-type openapi_fristen_ergebnis() ::
    #{ 'anzahl' := integer(),
       'fristen' := list()
     }.

encode(#{ 'anzahl' := Anzahl,
          'fristen' := Fristen
        }) ->
    #{ 'anzahl' => Anzahl,
       'fristen' => Fristen
     }.
