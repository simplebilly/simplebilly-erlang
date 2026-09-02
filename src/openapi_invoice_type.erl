-module(openapi_invoice_type).

-export([encode/1]).

-export_type([openapi_invoice_type/0]).

-type openapi_invoice_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
