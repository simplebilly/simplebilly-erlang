-module(openapi_plugin_error_one_of_1).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of_1/0]).

-type openapi_plugin_error_one_of_1() ::
    #{ 'NotFound' := list()
     }.

encode(#{ 'NotFound' := NotFound
        }) ->
    #{ 'NotFound' => NotFound
     }.
