-module(openapi_support_ticket_status).

-export([encode/1]).

-export_type([openapi_support_ticket_status/0]).

-type openapi_support_ticket_status() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
