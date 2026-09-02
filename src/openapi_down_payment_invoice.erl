-module(openapi_down_payment_invoice).

-export([encode/1]).

-export_type([openapi_down_payment_invoice/0]).

-type openapi_down_payment_invoice() ::
    #{ 'contact_id' => binary(),
       'contact_name' => binary(),
       'created_at' := binary(),
       'currency' := binary(),
       'id' := binary(),
       'notes' => binary(),
       'paid_amount' := binary(),
       'total_amount' := binary(),
       'voucher_date' := calendar:date(),
       'voucher_number' => binary(),
       'voucher_status' := binary()
     }.

encode(#{ 'contact_id' := ContactId,
          'contact_name' := ContactName,
          'created_at' := CreatedAt,
          'currency' := Currency,
          'id' := Id,
          'notes' := Notes,
          'paid_amount' := PaidAmount,
          'total_amount' := TotalAmount,
          'voucher_date' := VoucherDate,
          'voucher_number' := VoucherNumber,
          'voucher_status' := VoucherStatus
        }) ->
    #{ 'contact_id' => ContactId,
       'contact_name' => ContactName,
       'created_at' => CreatedAt,
       'currency' => Currency,
       'id' => Id,
       'notes' => Notes,
       'paid_amount' => PaidAmount,
       'total_amount' => TotalAmount,
       'voucher_date' => VoucherDate,
       'voucher_number' => VoucherNumber,
       'voucher_status' => VoucherStatus
     }.
