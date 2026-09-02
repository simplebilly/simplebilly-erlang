-module(openapi_import_start_response).

-export([encode/1]).

-export_type([openapi_import_start_response/0]).

-type openapi_import_start_response() ::
    #{ 'job_id' := binary()
     }.

encode(#{ 'job_id' := JobId
        }) ->
    #{ 'job_id' => JobId
     }.
