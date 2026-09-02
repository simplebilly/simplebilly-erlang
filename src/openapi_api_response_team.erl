-module(openapi_api_response_team).

-export([encode/1]).

-export_type([openapi_api_response_team/0]).

-type openapi_api_response_team() ::
    #{ 'data' => openapi_api_response_team_data:openapi_api_response_team_data(),
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
