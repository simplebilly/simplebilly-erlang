-module(openapi_plugin_pricing).

-export([encode/1]).

-export_type([openapi_plugin_pricing/0]).

-type openapi_plugin_pricing() ::
    #{ 'type' := binary(),
       'price' := float(),
       'price_per_month' := float()
     }.

encode(#{ 'type' := Type,
          'price' := Price,
          'price_per_month' := PricePerMonth
        }) ->
    #{ 'type' => Type,
       'price' => Price,
       'price_per_month' => PricePerMonth
     }.
