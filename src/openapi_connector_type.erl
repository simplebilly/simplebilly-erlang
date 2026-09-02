-module(openapi_connector_type).

-export([encode/1]).

-export_type([openapi_connector_type/0]).

-type openapi_connector_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
