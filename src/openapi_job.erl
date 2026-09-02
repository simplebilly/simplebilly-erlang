-module(openapi_job).

-export([encode/1]).

-export_type([openapi_job/0]).

-type openapi_job() ::
    #{ 'attempts' => integer(),
       'jobType' := binary(),
       'maxAttempts' := integer(),
       'payload' => openapi_any_type:openapi_any_type(),
       'runAt' => openapi_date_time:openapi_date_time(),
       'status' := openapi_job_status:openapi_job_status()
     }.

encode(#{ 'attempts' := Attempts,
          'jobType' := JobType,
          'maxAttempts' := MaxAttempts,
          'payload' := Payload,
          'runAt' := RunAt,
          'status' := Status
        }) ->
    #{ 'attempts' => Attempts,
       'jobType' => JobType,
       'maxAttempts' => MaxAttempts,
       'payload' => Payload,
       'runAt' => RunAt,
       'status' => Status
     }.
