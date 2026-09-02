-module(openapi_check_status).

-export([encode/1]).

-export_type([openapi_check_status/0]).

-type openapi_check_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
