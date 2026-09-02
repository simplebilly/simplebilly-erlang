-module(openapi_login_request).

-export([encode/1]).

-export_type([openapi_login_request/0]).

-type openapi_login_request() ::
    #{ 'email' := binary(),
       'password' := binary(),
       'totp_code' => binary()
     }.

encode(#{ 'email' := Email,
          'password' := Password,
          'totp_code' := TotpCode
        }) ->
    #{ 'email' => Email,
       'password' => Password,
       'totp_code' => TotpCode
     }.
