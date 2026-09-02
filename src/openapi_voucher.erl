-module(openapi_voucher).

-export([encode/1]).

-export_type([openapi_voucher/0]).

-type openapi_voucher() ::
    #{ 'categoryId' => binary(),
       'contactId' => binary(),
       'contactName' => binary(),
       'currency' := binary(),
       'description' => binary(),
       'fileAttachments' => openapi_any_type:openapi_any_type(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'metadata' => openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'openAmount' => binary(),
       'paidDate' => calendar:date(),
       'paymentStatus' => openapi_payment_status:openapi_payment_status(),
       'taxAmounts' => openapi_any_type:openapi_any_type(),
       'taxCondition' => binary(),
       'totalGrossAmount' => binary(),
       'totalNetAmount' => binary(),
       'voucherDate' := calendar:date(),
       'voucherNumber' => binary(),
       'voucherStatus' := openapi_voucher_status:openapi_voucher_status(),
       'voucherType' := openapi_voucher_type:openapi_voucher_type()
     }.

encode(#{ 'categoryId' := CategoryId,
          'contactId' := ContactId,
          'contactName' := ContactName,
          'currency' := Currency,
          'description' := Description,
          'fileAttachments' := FileAttachments,
          'lineItems' := LineItems,
          'metadata' := Metadata,
          'notes' := Notes,
          'openAmount' := OpenAmount,
          'paidDate' := PaidDate,
          'paymentStatus' := PaymentStatus,
          'taxAmounts' := TaxAmounts,
          'taxCondition' := TaxCondition,
          'totalGrossAmount' := TotalGrossAmount,
          'totalNetAmount' := TotalNetAmount,
          'voucherDate' := VoucherDate,
          'voucherNumber' := VoucherNumber,
          'voucherStatus' := VoucherStatus,
          'voucherType' := VoucherType
        }) ->
    #{ 'categoryId' => CategoryId,
       'contactId' => ContactId,
       'contactName' => ContactName,
       'currency' => Currency,
       'description' => Description,
       'fileAttachments' => FileAttachments,
       'lineItems' => LineItems,
       'metadata' => Metadata,
       'notes' => Notes,
       'openAmount' => OpenAmount,
       'paidDate' => PaidDate,
       'paymentStatus' => PaymentStatus,
       'taxAmounts' => TaxAmounts,
       'taxCondition' => TaxCondition,
       'totalGrossAmount' => TotalGrossAmount,
       'totalNetAmount' => TotalNetAmount,
       'voucherDate' => VoucherDate,
       'voucherNumber' => VoucherNumber,
       'voucherStatus' => VoucherStatus,
       'voucherType' => VoucherType
     }.
