-module(openapi_plugin_pricing_one_of_2).

-export([encode/1]).

-export_type([openapi_plugin_pricing_one_of_2/0]).

-type openapi_plugin_pricing_one_of_2() ::
    #{ 'price_per_month' := float(),
       'type' := binary()
     }.

encode(#{ 'price_per_month' := PricePerMonth,
          'type' := Type
        }) ->
    #{ 'price_per_month' => PricePerMonth,
       'type' => Type
     }.
