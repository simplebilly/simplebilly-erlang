-module(openapi_payment_status).

-export([encode/1]).

-export_type([openapi_payment_status/0]).

-type openapi_payment_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
