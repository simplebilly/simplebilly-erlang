-module(openapi_generate_variants_request).

-export([encode/1]).

-export_type([openapi_generate_variants_request/0]).

-type openapi_generate_variants_request() ::
    #{ 'options' => maps:map(),
       'priceDelta' => binary(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'skuPrefix' => binary()
     }.

encode(#{ 'options' := Options,
          'priceDelta' := PriceDelta,
          'productId' := ProductId,
          'skuPrefix' := SkuPrefix
        }) ->
    #{ 'options' => Options,
       'priceDelta' => PriceDelta,
       'productId' => ProductId,
       'skuPrefix' => SkuPrefix
     }.
