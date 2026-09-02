-module(openapi_voucher_type).

-export([encode/1]).

-export_type([openapi_voucher_type/0]).

-type openapi_voucher_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
