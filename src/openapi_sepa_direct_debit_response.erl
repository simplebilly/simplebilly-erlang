-module(openapi_sepa_direct_debit_response).

-export([encode/1]).

-export_type([openapi_sepa_direct_debit_response/0]).

-type openapi_sepa_direct_debit_response() ::
    #{ 'content_type' := binary(),
       'filename' := binary(),
       'xml_content' := binary()
     }.

encode(#{ 'content_type' := ContentType,
          'filename' := Filename,
          'xml_content' := XmlContent
        }) ->
    #{ 'content_type' => ContentType,
       'filename' => Filename,
       'xml_content' => XmlContent
     }.
