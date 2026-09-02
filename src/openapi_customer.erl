-module(openapi_customer).

-export([encode/1]).

-export_type([openapi_customer/0]).

-type openapi_customer() ::
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
