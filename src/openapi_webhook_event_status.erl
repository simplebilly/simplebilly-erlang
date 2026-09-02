-module(openapi_webhook_event_status).

-export([encode/1]).

-export_type([openapi_webhook_event_status/0]).

-type openapi_webhook_event_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
