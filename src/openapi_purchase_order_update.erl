-module(openapi_purchase_order_update).

-export([encode/1]).

-export_type([openapi_purchase_order_update/0]).

-type openapi_purchase_order_update() ::
    #{ 'currency' => binary(),
       'deliveryAddress' => openapi_any_type:openapi_any_type(),
       'expectedDeliveryDate' => calendar:date(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'orderDate' => calendar:date(),
       'poNumber' => binary(),
       'status' => openapi_purchase_order_status:openapi_purchase_order_status(),
       'supplierContactId' => binary(),
       'supplierName' => binary(),
       'totalGrossAmount' => binary(),
       'totalNetAmount' => binary()
     }.

encode(#{ 'currency' := Currency,
          'deliveryAddress' := DeliveryAddress,
          'expectedDeliveryDate' := ExpectedDeliveryDate,
          'lineItems' := LineItems,
          'notes' := Notes,
          'orderDate' := OrderDate,
          'poNumber' := PoNumber,
          'status' := Status,
          'supplierContactId' := SupplierContactId,
          'supplierName' := SupplierName,
          'totalGrossAmount' := TotalGrossAmount,
          'totalNetAmount' := TotalNetAmount
        }) ->
    #{ 'currency' => Currency,
       'deliveryAddress' => DeliveryAddress,
       'expectedDeliveryDate' => ExpectedDeliveryDate,
       'lineItems' => LineItems,
       'notes' => Notes,
       'orderDate' => OrderDate,
       'poNumber' => PoNumber,
       'status' => Status,
       'supplierContactId' => SupplierContactId,
       'supplierName' => SupplierName,
       'totalGrossAmount' => TotalGrossAmount,
       'totalNetAmount' => TotalNetAmount
     }.
