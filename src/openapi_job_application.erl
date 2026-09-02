-module(openapi_job_application).

-export([encode/1]).

-export_type([openapi_job_application/0]).

-type openapi_job_application() ::
    #{ 'cvFile' => binary(),
       'cvText' => binary(),
       'email' => binary(),
       'matchReason' => binary(),
       'matchScore' => integer(),
       'name' => binary(),
       'phone' => binary(),
       'postingId' => openapi_u_uid:openapi_u_uid(),
       'source' := binary(),
       'status' := openapi_application_status:openapi_application_status()
     }.

encode(#{ 'cvFile' := CvFile,
          'cvText' := CvText,
          'email' := Email,
          'matchReason' := MatchReason,
          'matchScore' := MatchScore,
          'name' := Name,
          'phone' := Phone,
          'postingId' := PostingId,
          'source' := Source,
          'status' := Status
        }) ->
    #{ 'cvFile' => CvFile,
       'cvText' => CvText,
       'email' => Email,
       'matchReason' => MatchReason,
       'matchScore' => MatchScore,
       'name' => Name,
       'phone' => Phone,
       'postingId' => PostingId,
       'source' => Source,
       'status' => Status
     }.
