-module(openapi_create_shipment_request).

-export([encode/1]).

-export_type([openapi_create_shipment_request/0]).

-type openapi_create_shipment_request() ::
    #{ 'carrier' := binary(),
       'service' => binary(),
       'weight_kg' => float()
     }.

encode(#{ 'carrier' := Carrier,
          'service' := Service,
          'weight_kg' := WeightKg
        }) ->
    #{ 'carrier' => Carrier,
       'service' => Service,
       'weight_kg' => WeightKg
     }.
