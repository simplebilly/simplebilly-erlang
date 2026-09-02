-module(openapi_anlage_s_ergebnis).

-export([encode/1]).

-export_type([openapi_anlage_s_ergebnis/0]).

-type openapi_anlage_s_ergebnis() ::
    #{ 'gewinn_verlust' := binary(),
       'jahr' := integer(),
       'kfz_hinweise' := list()
     }.

encode(#{ 'gewinn_verlust' := GewinnVerlust,
          'jahr' := Jahr,
          'kfz_hinweise' := KfzHinweise
        }) ->
    #{ 'gewinn_verlust' => GewinnVerlust,
       'jahr' => Jahr,
       'kfz_hinweise' => KfzHinweise
     }.
