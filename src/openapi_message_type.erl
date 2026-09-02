-module(openapi_message_type).

-export([encode/1]).

-export_type([openapi_message_type/0]).

-type openapi_message_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
