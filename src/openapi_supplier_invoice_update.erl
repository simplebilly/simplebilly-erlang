-module(openapi_supplier_invoice_update).

-export([encode/1]).

-export_type([openapi_supplier_invoice_update/0]).

-type openapi_supplier_invoice_update() ::
    #{ 'currency' => binary(),
       'goodsReceiptId' => binary(),
       'invoiceDate' => calendar:date(),
       'invoiceNumber' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'purchaseOrderId' => binary(),
       'status' => openapi_supplier_invoice_status:openapi_supplier_invoice_status(),
       'supplierContactId' => binary(),
       'supplierName' => binary(),
       'totalGrossAmount' => binary(),
       'totalNetAmount' => binary()
     }.

encode(#{ 'currency' := Currency,
          'goodsReceiptId' := GoodsReceiptId,
          'invoiceDate' := InvoiceDate,
          'invoiceNumber' := InvoiceNumber,
          'lineItems' := LineItems,
          'notes' := Notes,
          'purchaseOrderId' := PurchaseOrderId,
          'status' := Status,
          'supplierContactId' := SupplierContactId,
          'supplierName' := SupplierName,
          'totalGrossAmount' := TotalGrossAmount,
          'totalNetAmount' := TotalNetAmount
        }) ->
    #{ 'currency' => Currency,
       'goodsReceiptId' => GoodsReceiptId,
       'invoiceDate' => InvoiceDate,
       'invoiceNumber' => InvoiceNumber,
       'lineItems' => LineItems,
       'notes' => Notes,
       'purchaseOrderId' => PurchaseOrderId,
       'status' => Status,
       'supplierContactId' => SupplierContactId,
       'supplierName' => SupplierName,
       'totalGrossAmount' => TotalGrossAmount,
       'totalNetAmount' => TotalNetAmount
     }.
