-module(openapi_deliverable_response).

-export([encode/1]).

-export_type([openapi_deliverable_response/0]).

-type openapi_deliverable_response() ::
    #{ 'availableStock' := integer(),
       'deliverableQuantity' := integer(),
       'maxSellable' => integer(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'reservedStock' := integer(),
       'warehouseId' => binary()
     }.

encode(#{ 'availableStock' := AvailableStock,
          'deliverableQuantity' := DeliverableQuantity,
          'maxSellable' := MaxSellable,
          'productId' := ProductId,
          'reservedStock' := ReservedStock,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'availableStock' => AvailableStock,
       'deliverableQuantity' => DeliverableQuantity,
       'maxSellable' => MaxSellable,
       'productId' => ProductId,
       'reservedStock' => ReservedStock,
       'warehouseId' => WarehouseId
     }.
