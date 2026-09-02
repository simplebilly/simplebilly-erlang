-module(openapi_invoice_pdf_url_response).

-export([encode/1]).

-export_type([openapi_invoice_pdf_url_response/0]).

-type openapi_invoice_pdf_url_response() ::
    #{ 'url' := binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
