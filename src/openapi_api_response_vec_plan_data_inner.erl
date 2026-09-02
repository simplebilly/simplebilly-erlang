-module(openapi_api_response_vec_plan_data_inner).

-export([encode/1]).

-export_type([openapi_api_response_vec_plan_data_inner/0]).

-type openapi_api_response_vec_plan_data_inner() ::
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
