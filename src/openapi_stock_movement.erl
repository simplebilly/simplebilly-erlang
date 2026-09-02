-module(openapi_stock_movement).

-export([encode/1]).

-export_type([openapi_stock_movement/0]).

-type openapi_stock_movement() ::
    #{ 'delta' := integer(),
       'movementType' := openapi_movement_type:openapi_movement_type(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'reason' => binary(),
       'referenceId' => binary(),
       'referenceType' => openapi_reference_type:openapi_reference_type(),
       'warehouseId' := binary()
     }.

encode(#{ 'delta' := Delta,
          'movementType' := MovementType,
          'productId' := ProductId,
          'quantity' := Quantity,
          'reason' := Reason,
          'referenceId' := ReferenceId,
          'referenceType' := ReferenceType,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'delta' => Delta,
       'movementType' => MovementType,
       'productId' => ProductId,
       'quantity' => Quantity,
       'reason' => Reason,
       'referenceId' => ReferenceId,
       'referenceType' => ReferenceType,
       'warehouseId' => WarehouseId
     }.
