-module(openapi_config_field_kind_one_of).

-export([encode/1]).

-export_type([openapi_config_field_kind_one_of/0]).

-type openapi_config_field_kind_one_of() ::
    #{ 'type' := binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.
