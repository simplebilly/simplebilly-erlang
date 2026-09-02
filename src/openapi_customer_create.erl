-module(openapi_customer_create).

-export([encode/1]).

-export_type([openapi_customer_create/0]).

-type openapi_customer_create() ::
    #{ 'address' => openapi_any_type:openapi_any_type(),
       'contactPerson' => binary(),
       'email' => binary(),
       'externalOrderNumber' => binary(),
       'name' := binary(),
       'paymentGracePeriodDays' => integer(),
       'phone' => binary(),
       'vatId' => binary()
     }.

encode(#{ 'address' := Address,
          'contactPerson' := ContactPerson,
          'email' := Email,
          'externalOrderNumber' := ExternalOrderNumber,
          'name' := Name,
          'paymentGracePeriodDays' := PaymentGracePeriodDays,
          'phone' := Phone,
          'vatId' := VatId
        }) ->
    #{ 'address' => Address,
       'contactPerson' => ContactPerson,
       'email' => Email,
       'externalOrderNumber' => ExternalOrderNumber,
       'name' => Name,
       'paymentGracePeriodDays' => PaymentGracePeriodDays,
       'phone' => Phone,
       'vatId' => VatId
     }.
