-module(openapi_invoice_status).

-export([encode/1]).

-export_type([openapi_invoice_status/0]).

-type openapi_invoice_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
