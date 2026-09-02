-module(openapi_legal_document_upsert).

-export([encode/1]).

-export_type([openapi_legal_document_upsert/0]).

-type openapi_legal_document_upsert() ::
    #{ 'content' := binary(),
       'docType' := binary(),
       'lang' := binary(),
       'title' := binary()
     }.

encode(#{ 'content' := Content,
          'docType' := DocType,
          'lang' := Lang,
          'title' := Title
        }) ->
    #{ 'content' => Content,
       'docType' => DocType,
       'lang' => Lang,
       'title' => Title
     }.
