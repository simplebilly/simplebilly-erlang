-module(openapi_sync_type).

-export([encode/1]).

-export_type([openapi_sync_type/0]).

-type openapi_sync_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
