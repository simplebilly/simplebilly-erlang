-module(openapi_price_tier).

-export([encode/1]).

-export_type([openapi_price_tier/0]).

-type openapi_price_tier() ::
    #{ 'customerGroupId' => binary(),
       'minQuantity' => integer(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'unitPrice' := binary()
     }.

encode(#{ 'customerGroupId' := CustomerGroupId,
          'minQuantity' := MinQuantity,
          'productId' := ProductId,
          'unitPrice' := UnitPrice
        }) ->
    #{ 'customerGroupId' => CustomerGroupId,
       'minQuantity' => MinQuantity,
       'productId' => ProductId,
       'unitPrice' => UnitPrice
     }.
