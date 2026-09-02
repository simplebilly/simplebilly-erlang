-module(openapi_api_response_subscription_overview).

-export([encode/1]).

-export_type([openapi_api_response_subscription_overview/0]).

-type openapi_api_response_subscription_overview() ::
    #{ 'data' => openapi_api_response_subscription_overview_data:openapi_api_response_subscription_overview_data(),
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
