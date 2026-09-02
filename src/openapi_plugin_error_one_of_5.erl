-module(openapi_plugin_error_one_of_5).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of_5/0]).

-type openapi_plugin_error_one_of_5() ::
    #{ 'ValidationError' := list()
     }.

encode(#{ 'ValidationError' := ValidationError
        }) ->
    #{ 'ValidationError' => ValidationError
     }.
