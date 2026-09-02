-module(openapi_config_field_kind_one_of_1).

-export([encode/1]).

-export_type([openapi_config_field_kind_one_of_1/0]).

-type openapi_config_field_kind_one_of_1() ::
    #{ 'type' := binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.
