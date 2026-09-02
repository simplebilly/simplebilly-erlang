-module(openapi_resolved_price_response).

-export([encode/1]).

-export_type([openapi_resolved_price_response/0]).

-type openapi_resolved_price_response() ::
    #{ 'isListPrice' := boolean(),
       'priceTierId' => binary(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'unitPrice' := binary()
     }.

encode(#{ 'isListPrice' := IsListPrice,
          'priceTierId' := PriceTierId,
          'productId' := ProductId,
          'quantity' := Quantity,
          'unitPrice' := UnitPrice
        }) ->
    #{ 'isListPrice' => IsListPrice,
       'priceTierId' => PriceTierId,
       'productId' => ProductId,
       'quantity' => Quantity,
       'unitPrice' => UnitPrice
     }.
