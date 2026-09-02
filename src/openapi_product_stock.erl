-module(openapi_product_stock).

-export([encode/1]).

-export_type([openapi_product_stock/0]).

-type openapi_product_stock() ::
    #{ 'name' := binary(),
       'product_id' := openapi_u_uid:openapi_u_uid(),
       'sku' := binary(),
       'stock_quantity' => integer()
     }.

encode(#{ 'name' := Name,
          'product_id' := ProductId,
          'sku' := Sku,
          'stock_quantity' := StockQuantity
        }) ->
    #{ 'name' => Name,
       'product_id' => ProductId,
       'sku' => Sku,
       'stock_quantity' => StockQuantity
     }.
