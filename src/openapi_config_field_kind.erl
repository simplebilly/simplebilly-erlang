-module(openapi_config_field_kind).

-export([encode/1]).

-export_type([openapi_config_field_kind/0]).

-type openapi_config_field_kind() ::
    #{ 'type' := binary(),
       'options' := list()
     }.

encode(#{ 'type' := Type,
          'options' := Options
        }) ->
    #{ 'type' => Type,
       'options' => Options
     }.
