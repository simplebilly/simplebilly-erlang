-module(openapi_import_start_request).

-export([encode/1]).

-export_type([openapi_import_start_request/0]).

-type openapi_import_start_request() ::
    #{ 'apiKey' := binary(),
       'provider' := binary(),
       'years' := list()
     }.

encode(#{ 'apiKey' := ApiKey,
          'provider' := Provider,
          'years' := Years
        }) ->
    #{ 'apiKey' => ApiKey,
       'provider' => Provider,
       'years' => Years
     }.
