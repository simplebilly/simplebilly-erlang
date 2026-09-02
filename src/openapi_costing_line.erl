-module(openapi_costing_line).

-export([encode/1]).

-export_type([openapi_costing_line/0]).

-type openapi_costing_line() ::
    #{ 'lineCost' := binary(),
       'name' := binary(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'quantityPerUnit' := integer(),
       'sku' := binary(),
       'totalQuantity' := integer(),
       'unitPurchasePrice' => binary()
     }.

encode(#{ 'lineCost' := LineCost,
          'name' := Name,
          'productId' := ProductId,
          'quantityPerUnit' := QuantityPerUnit,
          'sku' := Sku,
          'totalQuantity' := TotalQuantity,
          'unitPurchasePrice' := UnitPurchasePrice
        }) ->
    #{ 'lineCost' => LineCost,
       'name' => Name,
       'productId' => ProductId,
       'quantityPerUnit' => QuantityPerUnit,
       'sku' => Sku,
       'totalQuantity' => TotalQuantity,
       'unitPurchasePrice' => UnitPurchasePrice
     }.
