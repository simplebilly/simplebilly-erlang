-module(openapi_declaration_type).

-export([encode/1]).

-export_type([openapi_declaration_type/0]).

-type openapi_declaration_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
