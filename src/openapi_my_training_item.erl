-module(openapi_my_training_item).

-export([encode/1]).

-export_type([openapi_my_training_item/0]).

-type openapi_my_training_item() ::
    #{ 'assignmentId' := openapi_u_uid:openapi_u_uid(),
       'certificateId' => binary(),
       'code' := binary(),
       'description' => binary(),
       'dueDate' => calendar:date(),
       'lastScore' => integer(),
       'passScore' := integer(),
       'passed' => boolean(),
       'status' := openapi_assignment_status:openapi_assignment_status(),
       'title' := binary(),
       'trainingId' := openapi_u_uid:openapi_u_uid(),
       'validUntil' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'assignmentId' := AssignmentId,
          'certificateId' := CertificateId,
          'code' := Code,
          'description' := Description,
          'dueDate' := DueDate,
          'lastScore' := LastScore,
          'passScore' := PassScore,
          'passed' := Passed,
          'status' := Status,
          'title' := Title,
          'trainingId' := TrainingId,
          'validUntil' := ValidUntil
        }) ->
    #{ 'assignmentId' => AssignmentId,
       'certificateId' => CertificateId,
       'code' => Code,
       'description' => Description,
       'dueDate' => DueDate,
       'lastScore' => LastScore,
       'passScore' => PassScore,
       'passed' => Passed,
       'status' => Status,
       'title' => Title,
       'trainingId' => TrainingId,
       'validUntil' => ValidUntil
     }.
