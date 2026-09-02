-module(openapi_goods_receipt).

-export([encode/1]).

-export_type([openapi_goods_receipt/0]).

-type openapi_goods_receipt() ::
    #{ 'grNumber' := binary(),
       'lineItems' := openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'purchaseOrderId' => binary(),
       'receiptDate' := calendar:date(),
       'supplierContactId' => binary(),
       'supplierName' => binary(),
       'warehouseId' := binary()
     }.

encode(#{ 'grNumber' := GrNumber,
          'lineItems' := LineItems,
          'notes' := Notes,
          'purchaseOrderId' := PurchaseOrderId,
          'receiptDate' := ReceiptDate,
          'supplierContactId' := SupplierContactId,
          'supplierName' := SupplierName,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'grNumber' => GrNumber,
       'lineItems' => LineItems,
       'notes' => Notes,
       'purchaseOrderId' => PurchaseOrderId,
       'receiptDate' => ReceiptDate,
       'supplierContactId' => SupplierContactId,
       'supplierName' => SupplierName,
       'warehouseId' => WarehouseId
     }.
