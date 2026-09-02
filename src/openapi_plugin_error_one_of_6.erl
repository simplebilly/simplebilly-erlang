-module(openapi_plugin_error_one_of_6).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of_6/0]).

-type openapi_plugin_error_one_of_6() ::
    #{ 'NotImplemented' := binary()
     }.

encode(#{ 'NotImplemented' := NotImplemented
        }) ->
    #{ 'NotImplemented' => NotImplemented
     }.
