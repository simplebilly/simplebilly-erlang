-module(openapi_metered_usage).

-export([encode/1]).

-export_type([openapi_metered_usage/0]).

-type openapi_metered_usage() ::
    #{ 'limit' := integer(),
       'meter' := binary(),
       'used' := integer()
     }.

encode(#{ 'limit' := Limit,
          'meter' := Meter,
          'used' := Used
        }) ->
    #{ 'limit' => Limit,
       'meter' => Meter,
       'used' => Used
     }.
