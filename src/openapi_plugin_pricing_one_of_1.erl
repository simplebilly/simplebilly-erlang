-module(openapi_plugin_pricing_one_of_1).

-export([encode/1]).

-export_type([openapi_plugin_pricing_one_of_1/0]).

-type openapi_plugin_pricing_one_of_1() ::
    #{ 'price' := float(),
       'type' := binary()
     }.

encode(#{ 'price' := Price,
          'type' := Type
        }) ->
    #{ 'price' => Price,
       'type' => Type
     }.
