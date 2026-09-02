-module(openapi_plugin_error_one_of).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of/0]).

-type openapi_plugin_error_one_of() ::
    #{ 'BadRequest' := list()
     }.

encode(#{ 'BadRequest' := BadRequest
        }) ->
    #{ 'BadRequest' => BadRequest
     }.
