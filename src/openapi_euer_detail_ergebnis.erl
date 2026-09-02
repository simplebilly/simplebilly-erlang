-module(openapi_euer_detail_ergebnis).

-export([encode/1]).

-export_type([openapi_euer_detail_ergebnis/0]).

-type openapi_euer_detail_ergebnis() ::
    #{ 'jahr' := integer(),
       'zeilen' := list()
     }.

encode(#{ 'jahr' := Jahr,
          'zeilen' := Zeilen
        }) ->
    #{ 'jahr' => Jahr,
       'zeilen' => Zeilen
     }.
