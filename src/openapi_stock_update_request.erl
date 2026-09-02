-module(openapi_stock_update_request).

-export([encode/1]).

-export_type([openapi_stock_update_request/0]).

-type openapi_stock_update_request() ::
    #{ 'quantity' := integer()
     }.

encode(#{ 'quantity' := Quantity
        }) ->
    #{ 'quantity' => Quantity
     }.
