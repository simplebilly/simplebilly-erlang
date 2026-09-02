-module(openapi_contact_type).

-export([encode/1]).

-export_type([openapi_contact_type/0]).

-type openapi_contact_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
