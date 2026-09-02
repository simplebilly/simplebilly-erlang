-module(openapi_application_status).

-export([encode/1]).

-export_type([openapi_application_status/0]).

-type openapi_application_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
