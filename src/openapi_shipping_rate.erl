-module(openapi_shipping_rate).

-export([encode/1]).

-export_type([openapi_shipping_rate/0]).

-type openapi_shipping_rate() ::
    #{ 'breakdown' => binary(),
       'carrier' := binary(),
       'cross_border_surcharge' => binary(),
       'destination_country' := binary(),
       'estimated_days' => integer(),
       'from_api' := boolean(),
       'insured_value' => binary(),
       'island_surcharge' => binary(),
       'origin_country' := binary(),
       'rate' := binary(),
       'service' := binary(),
       'volume_discount' => binary(),
       'weight_kg' := float()
     }.

encode(#{ 'breakdown' := Breakdown,
          'carrier' := Carrier,
          'cross_border_surcharge' := CrossBorderSurcharge,
          'destination_country' := DestinationCountry,
          'estimated_days' := EstimatedDays,
          'from_api' := FromApi,
          'insured_value' := InsuredValue,
          'island_surcharge' := IslandSurcharge,
          'origin_country' := OriginCountry,
          'rate' := Rate,
          'service' := Service,
          'volume_discount' := VolumeDiscount,
          'weight_kg' := WeightKg
        }) ->
    #{ 'breakdown' => Breakdown,
       'carrier' => Carrier,
       'cross_border_surcharge' => CrossBorderSurcharge,
       'destination_country' => DestinationCountry,
       'estimated_days' => EstimatedDays,
       'from_api' => FromApi,
       'insured_value' => InsuredValue,
       'island_surcharge' => IslandSurcharge,
       'origin_country' => OriginCountry,
       'rate' => Rate,
       'service' => Service,
       'volume_discount' => VolumeDiscount,
       'weight_kg' => WeightKg
     }.
