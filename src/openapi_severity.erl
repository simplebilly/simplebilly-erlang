-module(openapi_severity).

-export([encode/1]).

-export_type([openapi_severity/0]).

-type openapi_severity() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
