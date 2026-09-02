-module(openapi_reset_password_request).

-export([encode/1]).

-export_type([openapi_reset_password_request/0]).

-type openapi_reset_password_request() ::
    #{ 'new_password' := binary(),
       'token' := binary()
     }.

encode(#{ 'new_password' := NewPassword,
          'token' := Token
        }) ->
    #{ 'new_password' => NewPassword,
       'token' => Token
     }.
