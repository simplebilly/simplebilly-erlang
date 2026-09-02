-module(openapi_warehouse_stock).

-export([encode/1]).

-export_type([openapi_warehouse_stock/0]).

-type openapi_warehouse_stock() ::
    #{ 'batchNumber' => binary(),
       'binLocation' => binary(),
       'expiryDate' => calendar:date(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'serialNumbers' => openapi_any_type:openapi_any_type(),
       'warehouseId' := binary()
     }.

encode(#{ 'batchNumber' := BatchNumber,
          'binLocation' := BinLocation,
          'expiryDate' := ExpiryDate,
          'productId' := ProductId,
          'quantity' := Quantity,
          'serialNumbers' := SerialNumbers,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'batchNumber' => BatchNumber,
       'binLocation' => BinLocation,
       'expiryDate' => ExpiryDate,
       'productId' => ProductId,
       'quantity' => Quantity,
       'serialNumbers' => SerialNumbers,
       'warehouseId' => WarehouseId
     }.
