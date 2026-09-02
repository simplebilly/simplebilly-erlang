-module(openapi_import_test_response).

-export([encode/1]).

-export_type([openapi_import_test_response/0]).

-type openapi_import_test_response() ::
    #{ 'error' => binary(),
       'ok' := boolean()
     }.

encode(#{ 'error' := Error,
          'ok' := Ok
        }) ->
    #{ 'error' => Error,
       'ok' => Ok
     }.
