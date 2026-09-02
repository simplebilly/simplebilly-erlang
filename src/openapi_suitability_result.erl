-module(openapi_suitability_result).

-export([encode/1]).

-export_type([openapi_suitability_result/0]).

-type openapi_suitability_result() ::
    #{ 'methods' := list(),
       'recommended_box' => openapi_box_fit:openapi_box_fit(),
       'requires_insurance' := boolean(),
       'total_value' := binary(),
       'total_weight_kg' := float()
     }.

encode(#{ 'methods' := Methods,
          'recommended_box' := RecommendedBox,
          'requires_insurance' := RequiresInsurance,
          'total_value' := TotalValue,
          'total_weight_kg' := TotalWeightKg
        }) ->
    #{ 'methods' => Methods,
       'recommended_box' => RecommendedBox,
       'requires_insurance' => RequiresInsurance,
       'total_value' => TotalValue,
       'total_weight_kg' => TotalWeightKg
     }.
