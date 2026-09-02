-module(openapi_shipping_rule_create).

-export([encode/1]).

-export_type([openapi_shipping_rule_create/0]).

-type openapi_shipping_rule_create() ::
    #{ 'carrier' => binary(),
       'country' => openapi_country_code:openapi_country_code(),
       'deliveryTime' => binary(),
       'isActive' => boolean(),
       'maxWeightKg' => float(),
       'minWeightKg' => float(),
       'name' := binary(),
       'notes' => binary(),
       'price' := binary(),
       'priority' => integer()
     }.

encode(#{ 'carrier' := Carrier,
          'country' := Country,
          'deliveryTime' := DeliveryTime,
          'isActive' := IsActive,
          'maxWeightKg' := MaxWeightKg,
          'minWeightKg' := MinWeightKg,
          'name' := Name,
          'notes' := Notes,
          'price' := Price,
          'priority' := Priority
        }) ->
    #{ 'carrier' => Carrier,
       'country' => Country,
       'deliveryTime' => DeliveryTime,
       'isActive' => IsActive,
       'maxWeightKg' => MaxWeightKg,
       'minWeightKg' => MinWeightKg,
       'name' => Name,
       'notes' => Notes,
       'price' => Price,
       'priority' => Priority
     }.
