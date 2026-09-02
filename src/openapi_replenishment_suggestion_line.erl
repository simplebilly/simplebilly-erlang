-module(openapi_replenishment_suggestion_line).

-export([encode/1]).

-export_type([openapi_replenishment_suggestion_line/0]).

-type openapi_replenishment_suggestion_line() ::
    #{ 'currentStock' := integer(),
       'maxStock' => integer(),
       'minStock' => integer(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'productName' := binary(),
       'sku' := binary(),
       'sourceAvailable' := integer(),
       'sourceWarehouseId' := binary(),
       'suggestedQuantity' := integer(),
       'targetWarehouseId' := binary()
     }.

encode(#{ 'currentStock' := CurrentStock,
          'maxStock' := MaxStock,
          'minStock' := MinStock,
          'productId' := ProductId,
          'productName' := ProductName,
          'sku' := Sku,
          'sourceAvailable' := SourceAvailable,
          'sourceWarehouseId' := SourceWarehouseId,
          'suggestedQuantity' := SuggestedQuantity,
          'targetWarehouseId' := TargetWarehouseId
        }) ->
    #{ 'currentStock' => CurrentStock,
       'maxStock' => MaxStock,
       'minStock' => MinStock,
       'productId' => ProductId,
       'productName' => ProductName,
       'sku' => Sku,
       'sourceAvailable' => SourceAvailable,
       'sourceWarehouseId' => SourceWarehouseId,
       'suggestedQuantity' => SuggestedQuantity,
       'targetWarehouseId' => TargetWarehouseId
     }.
