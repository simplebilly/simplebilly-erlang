-module(openapi_magic_link_verify_request).

-export([encode/1]).

-export_type([openapi_magic_link_verify_request/0]).

-type openapi_magic_link_verify_request() ::
    #{ 'token' := binary()
     }.

encode(#{ 'token' := Token
        }) ->
    #{ 'token' => Token
     }.
