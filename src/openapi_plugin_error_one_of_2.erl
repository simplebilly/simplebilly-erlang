-module(openapi_plugin_error_one_of_2).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of_2/0]).

-type openapi_plugin_error_one_of_2() ::
    #{ 'Unauthorized' := list()
     }.

encode(#{ 'Unauthorized' := Unauthorized
        }) ->
    #{ 'Unauthorized' => Unauthorized
     }.
