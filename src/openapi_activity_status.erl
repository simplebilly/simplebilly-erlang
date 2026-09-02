-module(openapi_activity_status).

-export([encode/1]).

-export_type([openapi_activity_status/0]).

-type openapi_activity_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
