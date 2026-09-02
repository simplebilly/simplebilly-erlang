-module(openapi_activity_type).

-export([encode/1]).

-export_type([openapi_activity_type/0]).

-type openapi_activity_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
