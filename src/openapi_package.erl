-module(openapi_package).

-export([encode/1]).

-export_type([openapi_package/0]).

-type openapi_package() ::
    #{ 'description' => binary(),
       'height_cm' => float(),
       'length_cm' => float(),
       'reference' => binary(),
       'weight_kg' := float(),
       'width_cm' => float()
     }.

encode(#{ 'description' := Description,
          'height_cm' := HeightCm,
          'length_cm' := LengthCm,
          'reference' := Reference,
          'weight_kg' := WeightKg,
          'width_cm' := WidthCm
        }) ->
    #{ 'description' => Description,
       'height_cm' => HeightCm,
       'length_cm' => LengthCm,
       'reference' => Reference,
       'weight_kg' => WeightKg,
       'width_cm' => WidthCm
     }.
