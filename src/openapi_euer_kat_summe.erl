-module(openapi_euer_kat_summe).

-export([encode/1]).

-export_type([openapi_euer_kat_summe/0]).

-type openapi_euer_kat_summe() ::
    #{ 'betrag' := binary(),
       'name' := binary()
     }.

encode(#{ 'betrag' := Betrag,
          'name' := Name
        }) ->
    #{ 'betrag' => Betrag,
       'name' => Name
     }.
