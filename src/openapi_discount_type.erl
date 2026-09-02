-module(openapi_discount_type).

-export([encode/1]).

-export_type([openapi_discount_type/0]).

-type openapi_discount_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
