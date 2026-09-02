-module(openapi_auth_response).

-export([encode/1]).

-export_type([openapi_auth_response/0]).

-type openapi_auth_response() ::
    #{ 'access_token' => binary(),
       'message' => binary(),
       'refresh_token' => binary(),
       'success' := boolean(),
       'user' => openapi_model:openapi_model()
     }.

encode(#{ 'access_token' := AccessToken,
          'message' := Message,
          'refresh_token' := RefreshToken,
          'success' := Success,
          'user' := User
        }) ->
    #{ 'access_token' => AccessToken,
       'message' => Message,
       'refresh_token' => RefreshToken,
       'success' => Success,
       'user' => User
     }.
