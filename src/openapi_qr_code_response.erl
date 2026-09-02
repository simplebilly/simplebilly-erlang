-module(openapi_qr_code_response).

-export([encode/1]).

-export_type([openapi_qr_code_response/0]).

-type openapi_qr_code_response() ::
    #{ 'content_type' := binary(),
       'qr_code_base64' := binary()
     }.

encode(#{ 'content_type' := ContentType,
          'qr_code_base64' := QrCodeBase64
        }) ->
    #{ 'content_type' => ContentType,
       'qr_code_base64' => QrCodeBase64
     }.
