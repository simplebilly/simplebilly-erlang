-module(openapi_api_response_string).

-export([encode/1]).

-export_type([openapi_api_response_string/0]).

-type openapi_api_response_string() ::
    #{ 'data' => binary(),
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
