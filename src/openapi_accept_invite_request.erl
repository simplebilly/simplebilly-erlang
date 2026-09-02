-module(openapi_accept_invite_request).

-export([encode/1]).

-export_type([openapi_accept_invite_request/0]).

-type openapi_accept_invite_request() ::
    #{ 'first_name' := binary(),
       'last_name' := binary(),
       'password' := binary(),
       'privacy_accepted' := boolean(),
       'token' := binary()
     }.

encode(#{ 'first_name' := FirstName,
          'last_name' := LastName,
          'password' := Password,
          'privacy_accepted' := PrivacyAccepted,
          'token' := Token
        }) ->
    #{ 'first_name' => FirstName,
       'last_name' => LastName,
       'password' => Password,
       'privacy_accepted' => PrivacyAccepted,
       'token' => Token
     }.
