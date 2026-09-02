-module(openapi_production_order).

-export([encode/1]).

-export_type([openapi_production_order/0]).

-type openapi_production_order() ::
    #{ 'bomId' => openapi_u_uid:openapi_u_uid(),
       'components' => openapi_any_type:openapi_any_type(),
       'endDate' => calendar:date(),
       'notes' => binary(),
       'orderNumber' := binary(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'sourceWarehouseId' => binary(),
       'startDate' => calendar:date(),
       'status' => openapi_production_order_status:openapi_production_order_status(),
       'targetWarehouseId' => binary()
     }.

encode(#{ 'bomId' := BomId,
          'components' := Components,
          'endDate' := EndDate,
          'notes' := Notes,
          'orderNumber' := OrderNumber,
          'productId' := ProductId,
          'quantity' := Quantity,
          'sourceWarehouseId' := SourceWarehouseId,
          'startDate' := StartDate,
          'status' := Status,
          'targetWarehouseId' := TargetWarehouseId
        }) ->
    #{ 'bomId' => BomId,
       'components' => Components,
       'endDate' => EndDate,
       'notes' => Notes,
       'orderNumber' => OrderNumber,
       'productId' => ProductId,
       'quantity' => Quantity,
       'sourceWarehouseId' => SourceWarehouseId,
       'startDate' => StartDate,
       'status' => Status,
       'targetWarehouseId' => TargetWarehouseId
     }.
