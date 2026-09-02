-module(openapi_payment_method).

-export([encode/1]).

-export_type([openapi_payment_method/0]).

-type openapi_payment_method() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
