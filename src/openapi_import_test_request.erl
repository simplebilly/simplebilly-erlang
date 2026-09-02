-module(openapi_import_test_request).

-export([encode/1]).

-export_type([openapi_import_test_request/0]).

-type openapi_import_test_request() ::
    #{ 'apiKey' := binary(),
       'provider' := binary()
     }.

encode(#{ 'apiKey' := ApiKey,
          'provider' := Provider
        }) ->
    #{ 'apiKey' => ApiKey,
       'provider' => Provider
     }.
