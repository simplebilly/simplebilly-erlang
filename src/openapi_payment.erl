-module(openapi_payment).

-export([encode/1]).

-export_type([openapi_payment/0]).

-type openapi_payment() ::
    #{ 'amount' => binary(),
       'attachment' => openapi_any_type:openapi_any_type(),
       'currency' => binary(),
       'customerId' => binary(),
       'description' => binary(),
       'metadata' => openapi_any_type:openapi_any_type(),
       'method' => openapi_payment_method:openapi_payment_method(),
       'paymentDate' => openapi_date_time:openapi_date_time(),
       'reference' => binary()
     }.

encode(#{ 'amount' := Amount,
          'attachment' := Attachment,
          'currency' := Currency,
          'customerId' := CustomerId,
          'description' := Description,
          'metadata' := Metadata,
          'method' := Method,
          'paymentDate' := PaymentDate,
          'reference' := Reference
        }) ->
    #{ 'amount' => Amount,
       'attachment' => Attachment,
       'currency' => Currency,
       'customerId' => CustomerId,
       'description' => Description,
       'metadata' => Metadata,
       'method' => Method,
       'paymentDate' => PaymentDate,
       'reference' => Reference
     }.
