-module(openapi_totp_enable_request).

-export([encode/1]).

-export_type([openapi_totp_enable_request/0]).

-type openapi_totp_enable_request() ::
    #{ 'code' := binary()
     }.

encode(#{ 'code' := Code
        }) ->
    #{ 'code' => Code
     }.
