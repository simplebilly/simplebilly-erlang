-module(openapi_quotation).

-export([encode/1]).

-export_type([openapi_quotation/0]).

-type openapi_quotation() ::
    #{ 'address' => openapi_any_type:openapi_any_type(),
       'contactId' => binary(),
       'contactName' => binary(),
       'currency' := binary(),
       'expirationDate' => calendar:date(),
       'files' => openapi_any_type:openapi_any_type(),
       'introduction' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'precedingSalesVoucherId' => binary(),
       'precedingSalesVoucherType' => openapi_preceding_sales_voucher_type:openapi_preceding_sales_voucher_type(),
       'quotationNumber' => binary(),
       'remark' => binary(),
       'subtotal' => binary(),
       'taxCondition' => binary(),
       'title' => binary(),
       'totalAmount' => binary(),
       'totalTax' => binary(),
       'voucherDate' := calendar:date(),
       'voucherStatus' := openapi_voucher_status:openapi_voucher_status()
     }.

encode(#{ 'address' := Address,
          'contactId' := ContactId,
          'contactName' := ContactName,
          'currency' := Currency,
          'expirationDate' := ExpirationDate,
          'files' := Files,
          'introduction' := Introduction,
          'lineItems' := LineItems,
          'precedingSalesVoucherId' := PrecedingSalesVoucherId,
          'precedingSalesVoucherType' := PrecedingSalesVoucherType,
          'quotationNumber' := QuotationNumber,
          'remark' := Remark,
          'subtotal' := Subtotal,
          'taxCondition' := TaxCondition,
          'title' := Title,
          'totalAmount' := TotalAmount,
          'totalTax' := TotalTax,
          'voucherDate' := VoucherDate,
          'voucherStatus' := VoucherStatus
        }) ->
    #{ 'address' => Address,
       'contactId' => ContactId,
       'contactName' => ContactName,
       'currency' => Currency,
       'expirationDate' => ExpirationDate,
       'files' => Files,
       'introduction' => Introduction,
       'lineItems' => LineItems,
       'precedingSalesVoucherId' => PrecedingSalesVoucherId,
       'precedingSalesVoucherType' => PrecedingSalesVoucherType,
       'quotationNumber' => QuotationNumber,
       'remark' => Remark,
       'subtotal' => Subtotal,
       'taxCondition' => TaxCondition,
       'title' => Title,
       'totalAmount' => TotalAmount,
       'totalTax' => TotalTax,
       'voucherDate' => VoucherDate,
       'voucherStatus' => VoucherStatus
     }.
