-module(openapi_config_field_kind_one_of_4).

-export([encode/1]).

-export_type([openapi_config_field_kind_one_of_4/0]).

-type openapi_config_field_kind_one_of_4() ::
    #{ 'type' := binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.
