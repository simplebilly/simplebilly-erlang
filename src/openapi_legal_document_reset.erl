-module(openapi_legal_document_reset).

-export([encode/1]).

-export_type([openapi_legal_document_reset/0]).

-type openapi_legal_document_reset() ::
    #{ 'docType' => binary(),
       'lang' => binary()
     }.

encode(#{ 'docType' := DocType,
          'lang' := Lang
        }) ->
    #{ 'docType' => DocType,
       'lang' => Lang
     }.
