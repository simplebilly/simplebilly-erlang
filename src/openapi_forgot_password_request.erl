-module(openapi_forgot_password_request).

-export([encode/1]).

-export_type([openapi_forgot_password_request/0]).

-type openapi_forgot_password_request() ::
    #{ 'email' := binary()
     }.

encode(#{ 'email' := Email
        }) ->
    #{ 'email' => Email
     }.
