-module(openapi_coupon_validation).

-export([encode/1]).

-export_type([openapi_coupon_validation/0]).

-type openapi_coupon_validation() ::
    #{ 'code' := binary(),
       'discount_type' := binary(),
       'discount_value' := binary(),
       'discounted_amount' := binary(),
       'max_discount_amount' => binary(),
       'reason' => binary(),
       'valid' := boolean()
     }.

encode(#{ 'code' := Code,
          'discount_type' := DiscountType,
          'discount_value' := DiscountValue,
          'discounted_amount' := DiscountedAmount,
          'max_discount_amount' := MaxDiscountAmount,
          'reason' := Reason,
          'valid' := Valid
        }) ->
    #{ 'code' => Code,
       'discount_type' => DiscountType,
       'discount_value' => DiscountValue,
       'discounted_amount' => DiscountedAmount,
       'max_discount_amount' => MaxDiscountAmount,
       'reason' => Reason,
       'valid' => Valid
     }.
