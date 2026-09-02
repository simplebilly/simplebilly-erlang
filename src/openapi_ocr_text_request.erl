-module(openapi_ocr_text_request).

-export([encode/1]).

-export_type([openapi_ocr_text_request/0]).

-type openapi_ocr_text_request() ::
    #{ 'ocrText' => binary()
     }.

encode(#{ 'ocrText' := OcrText
        }) ->
    #{ 'ocrText' => OcrText
     }.
