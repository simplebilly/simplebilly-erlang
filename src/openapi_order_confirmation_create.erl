-module(openapi_order_confirmation_create).

-export([encode/1]).

-export_type([openapi_order_confirmation_create/0]).

-type openapi_order_confirmation_create() ::
    #{ 'address' => openapi_any_type:openapi_any_type(),
       'confirmationNumber' => binary(),
       'contactId' => binary(),
       'contactName' => binary(),
       'currency' := binary(),
       'files' => openapi_any_type:openapi_any_type(),
       'introduction' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'precedingSalesVoucherId' => binary(),
       'precedingSalesVoucherType' => openapi_preceding_sales_voucher_type:openapi_preceding_sales_voucher_type(),
       'remark' => binary(),
       'taxCondition' => binary(),
       'title' => binary(),
       'voucherDate' := calendar:date(),
       'voucherStatus' := openapi_voucher_status:openapi_voucher_status()
     }.

encode(#{ 'address' := Address,
          'confirmationNumber' := ConfirmationNumber,
          'contactId' := ContactId,
          'contactName' := ContactName,
          'currency' := Currency,
          'files' := Files,
          'introduction' := Introduction,
          'lineItems' := LineItems,
          'precedingSalesVoucherId' := PrecedingSalesVoucherId,
          'precedingSalesVoucherType' := PrecedingSalesVoucherType,
          'remark' := Remark,
          'taxCondition' := TaxCondition,
          'title' := Title,
          'voucherDate' := VoucherDate,
          'voucherStatus' := VoucherStatus
        }) ->
    #{ 'address' => Address,
       'confirmationNumber' => ConfirmationNumber,
       'contactId' => ContactId,
       'contactName' => ContactName,
       'currency' => Currency,
       'files' => Files,
       'introduction' => Introduction,
       'lineItems' => LineItems,
       'precedingSalesVoucherId' => PrecedingSalesVoucherId,
       'precedingSalesVoucherType' => PrecedingSalesVoucherType,
       'remark' => Remark,
       'taxCondition' => TaxCondition,
       'title' => Title,
       'voucherDate' => VoucherDate,
       'voucherStatus' => VoucherStatus
     }.
