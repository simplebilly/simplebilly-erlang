-module(openapi_verify_email_request).

-export([encode/1]).

-export_type([openapi_verify_email_request/0]).

-type openapi_verify_email_request() ::
    #{ 'token' := binary()
     }.

encode(#{ 'token' := Token
        }) ->
    #{ 'token' => Token
     }.
