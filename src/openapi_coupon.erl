-module(openapi_coupon).

-export([encode/1]).

-export_type([openapi_coupon/0]).

-type openapi_coupon() ::
    #{ 'code' := binary(),
       'description' => binary(),
       'discountType' := openapi_discount_type:openapi_discount_type(),
       'discountValue' := binary(),
       'expiresAt' => openapi_date_time:openapi_date_time(),
       'isActive' => boolean(),
       'isCombineable' => boolean(),
       'maxDiscountAmount' => binary(),
       'maxUses' => integer(),
       'maxUsesPerCustomer' => integer(),
       'minOrderAmount' => binary(),
       'productIds' => openapi_any_type:openapi_any_type(),
       'startsAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'code' := Code,
          'description' := Description,
          'discountType' := DiscountType,
          'discountValue' := DiscountValue,
          'expiresAt' := ExpiresAt,
          'isActive' := IsActive,
          'isCombineable' := IsCombineable,
          'maxDiscountAmount' := MaxDiscountAmount,
          'maxUses' := MaxUses,
          'maxUsesPerCustomer' := MaxUsesPerCustomer,
          'minOrderAmount' := MinOrderAmount,
          'productIds' := ProductIds,
          'startsAt' := StartsAt
        }) ->
    #{ 'code' => Code,
       'description' => Description,
       'discountType' => DiscountType,
       'discountValue' => DiscountValue,
       'expiresAt' => ExpiresAt,
       'isActive' => IsActive,
       'isCombineable' => IsCombineable,
       'maxDiscountAmount' => MaxDiscountAmount,
       'maxUses' => MaxUses,
       'maxUsesPerCustomer' => MaxUsesPerCustomer,
       'minOrderAmount' => MinOrderAmount,
       'productIds' => ProductIds,
       'startsAt' => StartsAt
     }.
