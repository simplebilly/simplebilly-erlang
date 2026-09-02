-module(openapi_gateway_type).

-export([encode/1]).

-export_type([openapi_gateway_type/0]).

-type openapi_gateway_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
