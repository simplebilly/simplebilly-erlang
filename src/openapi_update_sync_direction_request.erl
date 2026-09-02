-module(openapi_update_sync_direction_request).

-export([encode/1]).

-export_type([openapi_update_sync_direction_request/0]).

-type openapi_update_sync_direction_request() ::
    #{ 'directions' := maps:map()
     }.

encode(#{ 'directions' := Directions
        }) ->
    #{ 'directions' => Directions
     }.
