-module(openapi_payment_condition).

-export([encode/1]).

-export_type([openapi_payment_condition/0]).

-type openapi_payment_condition() ::
    #{ 'discount_days' := integer(),
       'discount_percentage' := float(),
       'id' := binary(),
       'name' := binary(),
       'payment_term_days' := integer()
     }.

encode(#{ 'discount_days' := DiscountDays,
          'discount_percentage' := DiscountPercentage,
          'id' := Id,
          'name' := Name,
          'payment_term_days' := PaymentTermDays
        }) ->
    #{ 'discount_days' => DiscountDays,
       'discount_percentage' => DiscountPercentage,
       'id' => Id,
       'name' => Name,
       'payment_term_days' => PaymentTermDays
     }.
