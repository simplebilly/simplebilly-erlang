-module(openapi_quotation_create).

-export([encode/1]).

-export_type([openapi_quotation_create/0]).

-type openapi_quotation_create() ::
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
       'taxCondition' => binary(),
       'title' => binary(),
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
          'taxCondition' := TaxCondition,
          'title' := Title,
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
       'taxCondition' => TaxCondition,
       'title' => Title,
       'voucherDate' => VoucherDate,
       'voucherStatus' => VoucherStatus
     }.
