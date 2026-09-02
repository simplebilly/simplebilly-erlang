-module(openapi_legal_document).

-export([encode/1]).

-export_type([openapi_legal_document/0]).

-type openapi_legal_document() ::
    #{ 'content' := binary(),
       'docType' := openapi_legal_doc_type:openapi_legal_doc_type(),
       'lang' := openapi_language_code:openapi_language_code(),
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
