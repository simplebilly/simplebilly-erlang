-module(openapi_return_order).

-export([encode/1]).

-export_type([openapi_return_order/0]).

-type openapi_return_order() ::
    #{ 'customerContactId' => binary(),
       'customerName' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'orderId' => binary(),
       'orderNumber' => binary(),
       'returnNumber' := binary(),
       'returnReason' => binary(),
       'status' := openapi_return_order_status:openapi_return_order_status(),
       'warehouseId' => binary()
     }.

encode(#{ 'customerContactId' := CustomerContactId,
          'customerName' := CustomerName,
          'lineItems' := LineItems,
          'notes' := Notes,
          'orderId' := OrderId,
          'orderNumber' := OrderNumber,
          'returnNumber' := ReturnNumber,
          'returnReason' := ReturnReason,
          'status' := Status,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'customerContactId' => CustomerContactId,
       'customerName' => CustomerName,
       'lineItems' => LineItems,
       'notes' => Notes,
       'orderId' => OrderId,
       'orderNumber' => OrderNumber,
       'returnNumber' => ReturnNumber,
       'returnReason' => ReturnReason,
       'status' => Status,
       'warehouseId' => WarehouseId
     }.
