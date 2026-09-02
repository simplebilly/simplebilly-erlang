-module(openapi_config_field_kind_one_of_3).

-export([encode/1]).

-export_type([openapi_config_field_kind_one_of_3/0]).

-type openapi_config_field_kind_one_of_3() ::
    #{ 'options' := list(),
       'type' := binary()
     }.

encode(#{ 'options' := Options,
          'type' := Type
        }) ->
    #{ 'options' => Options,
       'type' => Type
     }.
