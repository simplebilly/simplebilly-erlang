-module(openapi_execution_status).

-export([encode/1]).

-export_type([openapi_execution_status/0]).

-type openapi_execution_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
