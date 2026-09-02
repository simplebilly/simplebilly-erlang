-module(openapi_order_status).

-export([encode/1]).

-export_type([openapi_order_status/0]).

-type openapi_order_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
