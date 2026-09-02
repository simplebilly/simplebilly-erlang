-module(openapi_return_logistics_queue_item).

-export([encode/1]).

-export_type([openapi_return_logistics_queue_item/0]).

-type openapi_return_logistics_queue_item() ::
    #{ 'ageDays' := integer(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'customerName' => binary(),
       'lineItems' := openapi_any_type:openapi_any_type(),
       'orderNumber' => binary(),
       'returnNumber' := binary(),
       'returnOrderId' := binary(),
       'status' := binary(),
       'warehouseId' => binary()
     }.

encode(#{ 'ageDays' := AgeDays,
          'createdAt' := CreatedAt,
          'customerName' := CustomerName,
          'lineItems' := LineItems,
          'orderNumber' := OrderNumber,
          'returnNumber' := ReturnNumber,
          'returnOrderId' := ReturnOrderId,
          'status' := Status,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'ageDays' => AgeDays,
       'createdAt' => CreatedAt,
       'customerName' => CustomerName,
       'lineItems' => LineItems,
       'orderNumber' => OrderNumber,
       'returnNumber' => ReturnNumber,
       'returnOrderId' => ReturnOrderId,
       'status' => Status,
       'warehouseId' => WarehouseId
     }.
