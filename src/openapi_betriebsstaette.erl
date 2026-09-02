-module(openapi_betriebsstaette).

-export([encode/1]).

-export_type([openapi_betriebsstaette/0]).

-type openapi_betriebsstaette() ::
    #{ 'beschaefigte' := integer(),
       'name' := binary()
     }.

encode(#{ 'beschaefigte' := Beschaefigte,
          'name' := Name
        }) ->
    #{ 'beschaefigte' => Beschaefigte,
       'name' => Name
     }.
