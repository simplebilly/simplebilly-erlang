-module(openapi_institute_type).

-export([encode/1]).

-export_type([openapi_institute_type/0]).

-type openapi_institute_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
