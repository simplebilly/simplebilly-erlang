-module(openapi_submit_result_response).

-export([encode/1]).

-export_type([openapi_submit_result_response/0]).

-type openapi_submit_result_response() ::
    #{ 'certificateId' => binary(),
       'completionId' := openapi_u_uid:openapi_u_uid(),
       'passScore' := integer(),
       'passed' := boolean(),
       'score' := integer(),
       'validUntil' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'certificateId' := CertificateId,
          'completionId' := CompletionId,
          'passScore' := PassScore,
          'passed' := Passed,
          'score' := Score,
          'validUntil' := ValidUntil
        }) ->
    #{ 'certificateId' => CertificateId,
       'completionId' => CompletionId,
       'passScore' => PassScore,
       'passed' => Passed,
       'score' => Score,
       'validUntil' => ValidUntil
     }.
