-module(openapi_config_field_kind_one_of_2).

-export([encode/1]).

-export_type([openapi_config_field_kind_one_of_2/0]).

-type openapi_config_field_kind_one_of_2() ::
    #{ 'type' := binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.
