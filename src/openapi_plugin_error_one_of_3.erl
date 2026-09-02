-module(openapi_plugin_error_one_of_3).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of_3/0]).

-type openapi_plugin_error_one_of_3() ::
    #{ 'InternalError' := list()
     }.

encode(#{ 'InternalError' := InternalError
        }) ->
    #{ 'InternalError' => InternalError
     }.
