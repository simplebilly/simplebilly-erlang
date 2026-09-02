-module(openapi_plugin_error_one_of_4).

-export([encode/1]).

-export_type([openapi_plugin_error_one_of_4/0]).

-type openapi_plugin_error_one_of_4() ::
    #{ 'DatabaseError' := list()
     }.

encode(#{ 'DatabaseError' := DatabaseError
        }) ->
    #{ 'DatabaseError' => DatabaseError
     }.
