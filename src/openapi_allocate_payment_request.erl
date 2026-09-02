-module(openapi_allocate_payment_request).

-export([encode/1]).

-export_type([openapi_allocate_payment_request/0]).

-type openapi_allocate_payment_request() ::
    #{ 'amount' := float(),
       'invoice_id' := binary(),
       'payment_id' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'amount' := Amount,
          'invoice_id' := InvoiceId,
          'payment_id' := PaymentId
        }) ->
    #{ 'amount' => Amount,
       'invoice_id' => InvoiceId,
       'payment_id' => PaymentId
     }.
