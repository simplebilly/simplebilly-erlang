-module(openapi_betriebsstaetten_detail).

-export([encode/1]).

-export_type([openapi_betriebsstaetten_detail/0]).

-type openapi_betriebsstaetten_detail() ::
    #{ 'beschaefigte' := integer(),
       'monatlicher_beitrag' := binary(),
       'name' := binary()
     }.

encode(#{ 'beschaefigte' := Beschaefigte,
          'monatlicher_beitrag' := MonatlicherBeitrag,
          'name' := Name
        }) ->
    #{ 'beschaefigte' => Beschaefigte,
       'monatlicher_beitrag' => MonatlicherBeitrag,
       'name' => Name
     }.
