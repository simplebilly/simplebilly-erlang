-module(openapi_document_type).

-export([encode/1]).

-export_type([openapi_document_type/0]).

-type openapi_document_type() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
