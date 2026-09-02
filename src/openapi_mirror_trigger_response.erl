-module(openapi_mirror_trigger_response).

-export([encode/1]).

-export_type([openapi_mirror_trigger_response/0]).

-type openapi_mirror_trigger_response() ::
    #{ 'job_id' := binary()
     }.

encode(#{ 'job_id' := JobId
        }) ->
    #{ 'job_id' => JobId
     }.
