-module(openapi_plan).

-export([encode/1]).

-export_type([openapi_plan/0]).

-type openapi_plan() ::
    #{ 'features' := openapi_plan_features:openapi_plan_features(),
       'id' := binary(),
       'limits' := openapi_plan_limits:openapi_plan_limits(),
       'name' := binary(),
       'priceEur' := float()
     }.

encode(#{ 'features' := Features,
          'id' := Id,
          'limits' := Limits,
          'name' := Name,
          'priceEur' := PriceEur
        }) ->
    #{ 'features' => Features,
       'id' => Id,
       'limits' => Limits,
       'name' => Name,
       'priceEur' => PriceEur
     }.
