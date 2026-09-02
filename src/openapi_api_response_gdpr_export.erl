-module(openapi_api_response_gdpr_export).

-export([encode/1]).

-export_type([openapi_api_response_gdpr_export/0]).

-type openapi_api_response_gdpr_export() ::
    #{ 'data' => openapi_api_response_gdpr_export_data:openapi_api_response_gdpr_export_data(),
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
