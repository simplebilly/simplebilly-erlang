-module(openapi_api_response_user_profile).

-export([encode/1]).

-export_type([openapi_api_response_user_profile/0]).

-type openapi_api_response_user_profile() ::
    #{ 'data' => openapi_api_response_user_profile_data:openapi_api_response_user_profile_data(),
       'error' => binary(),
       'message' => binary(),
       'success' := boolean()
     }.

encode(#{ 'data' := Data,
          'error' := Error,
          'message' := Message,
          'success' := Success
        }) ->
    #{ 'data' => Data,
       'error' => Error,
       'message' => Message,
       'success' => Success
     }.
