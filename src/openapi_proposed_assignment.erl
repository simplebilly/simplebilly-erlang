-module(openapi_proposed_assignment).

-export([encode/1]).

-export_type([openapi_proposed_assignment/0]).

-type openapi_proposed_assignment() ::
    #{ 'amount_paid' := binary(),
       'confidence' := float(),
       'customer_id' => binary(),
       'invoice_id' := binary(),
       'invoice_number' := binary(),
       'open_amount' := binary(),
       'payment_date' := binary(),
       'payment_id' := openapi_u_uid:openapi_u_uid(),
       'reason' := binary(),
       'reference' => binary()
     }.

encode(#{ 'amount_paid' := AmountPaid,
          'confidence' := Confidence,
          'customer_id' := CustomerId,
          'invoice_id' := InvoiceId,
          'invoice_number' := InvoiceNumber,
          'open_amount' := OpenAmount,
          'payment_date' := PaymentDate,
          'payment_id' := PaymentId,
          'reason' := Reason,
          'reference' := Reference
        }) ->
    #{ 'amount_paid' => AmountPaid,
       'confidence' => Confidence,
       'customer_id' => CustomerId,
       'invoice_id' => InvoiceId,
       'invoice_number' => InvoiceNumber,
       'open_amount' => OpenAmount,
       'payment_date' => PaymentDate,
       'payment_id' => PaymentId,
       'reason' => Reason,
       'reference' => Reference
     }.
