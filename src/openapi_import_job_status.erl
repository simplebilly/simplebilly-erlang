-module(openapi_import_job_status).

-export([encode/1]).

-export_type([openapi_import_job_status/0]).

-type openapi_import_job_status() ::
    #{ 'error' => binary(),
       'job_id' := binary(),
       'processed' := integer(),
       'progress' := integer(),
       'provider' => binary(),
       'stage' := binary(),
       'status' := binary(),
       'total' := integer()
     }.

encode(#{ 'error' := Error,
          'job_id' := JobId,
          'processed' := Processed,
          'progress' := Progress,
          'provider' := Provider,
          'stage' := Stage,
          'status' := Status,
          'total' := Total
        }) ->
    #{ 'error' => Error,
       'job_id' => JobId,
       'processed' => Processed,
       'progress' => Progress,
       'provider' => Provider,
       'stage' => Stage,
       'status' => Status,
       'total' => Total
     }.
