-module(openapi_api_response_vec_team).

-export([encode/1]).

-export_type([openapi_api_response_vec_team/0]).

-type openapi_api_response_vec_team() ::
    #{ 'data' => list(),
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
