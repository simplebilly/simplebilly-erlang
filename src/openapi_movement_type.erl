-module(openapi_movement_type).

-export([encode/1]).

-export_type([openapi_movement_type/0]).

-type openapi_movement_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
