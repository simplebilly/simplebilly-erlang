-module(openapi_price_tier_create).

-export([encode/1]).

-export_type([openapi_price_tier_create/0]).

-type openapi_price_tier_create() ::
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
