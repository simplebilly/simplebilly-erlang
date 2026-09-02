-module(openapi_delivery_note_create).

-export([encode/1]).

-export_type([openapi_delivery_note_create/0]).

-type openapi_delivery_note_create() ::
    #{ 'address' => openapi_any_type:openapi_any_type(),
       'contactId' => binary(),
       'contactName' => binary(),
       'currency' := binary(),
       'deliveryDate' => calendar:date(),
       'deliveryNoteNumber' => binary(),
       'files' => openapi_any_type:openapi_any_type(),
       'introduction' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'precedingSalesVoucherId' => binary(),
       'precedingSalesVoucherType' => openapi_preceding_sales_voucher_type:openapi_preceding_sales_voucher_type(),
       'remark' => binary(),
       'shippingDate' => calendar:date(),
       'shippingMethod' => binary(),
       'title' => binary(),
       'voucherDate' := calendar:date(),
       'voucherStatus' := openapi_voucher_status:openapi_voucher_status()
     }.

encode(#{ 'address' := Address,
          'contactId' := ContactId,
          'contactName' := ContactName,
          'currency' := Currency,
          'deliveryDate' := DeliveryDate,
          'deliveryNoteNumber' := DeliveryNoteNumber,
          'files' := Files,
          'introduction' := Introduction,
          'lineItems' := LineItems,
          'precedingSalesVoucherId' := PrecedingSalesVoucherId,
          'precedingSalesVoucherType' := PrecedingSalesVoucherType,
          'remark' := Remark,
          'shippingDate' := ShippingDate,
          'shippingMethod' := ShippingMethod,
          'title' := Title,
          'voucherDate' := VoucherDate,
          'voucherStatus' := VoucherStatus
        }) ->
    #{ 'address' => Address,
       'contactId' => ContactId,
       'contactName' => ContactName,
       'currency' => Currency,
       'deliveryDate' => DeliveryDate,
       'deliveryNoteNumber' => DeliveryNoteNumber,
       'files' => Files,
       'introduction' => Introduction,
       'lineItems' => LineItems,
       'precedingSalesVoucherId' => PrecedingSalesVoucherId,
       'precedingSalesVoucherType' => PrecedingSalesVoucherType,
       'remark' => Remark,
       'shippingDate' => ShippingDate,
       'shippingMethod' => ShippingMethod,
       'title' => Title,
       'voucherDate' => VoucherDate,
       'voucherStatus' => VoucherStatus
     }.
