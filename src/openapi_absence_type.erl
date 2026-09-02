-module(openapi_absence_type).

-export([encode/1]).

-export_type([openapi_absence_type/0]).

-type openapi_absence_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
