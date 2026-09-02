-module(openapi_method_suitability).

-export([encode/1]).

-export_type([openapi_method_suitability/0]).

-type openapi_method_suitability() ::
    #{ 'carrier' := binary(),
       'rate' => openapi_shipping_rate:openapi_shipping_rate(),
       'reasons' := list(),
       'service' := binary(),
       'suitable' := boolean()
     }.

encode(#{ 'carrier' := Carrier,
          'rate' := Rate,
          'reasons' := Reasons,
          'service' := Service,
          'suitable' := Suitable
        }) ->
    #{ 'carrier' => Carrier,
       'rate' => Rate,
       'reasons' => Reasons,
       'service' => Service,
       'suitable' => Suitable
     }.
