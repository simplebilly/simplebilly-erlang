-module(openapi_change_password_request).

-export([encode/1]).

-export_type([openapi_change_password_request/0]).

-type openapi_change_password_request() ::
    #{ 'current_password' := binary(),
       'new_password' := binary()
     }.

encode(#{ 'current_password' := CurrentPassword,
          'new_password' := NewPassword
        }) ->
    #{ 'current_password' => CurrentPassword,
       'new_password' => NewPassword
     }.
