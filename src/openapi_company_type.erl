-module(openapi_company_type).

-export([encode/1]).

-export_type([openapi_company_type/0]).

-type openapi_company_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
