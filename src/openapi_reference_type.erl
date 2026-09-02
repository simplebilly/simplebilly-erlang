-module(openapi_reference_type).

-export([encode/1]).

-export_type([openapi_reference_type/0]).

-type openapi_reference_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
