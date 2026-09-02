-module(openapi_instrument_type).

-export([encode/1]).

-export_type([openapi_instrument_type/0]).

-type openapi_instrument_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
