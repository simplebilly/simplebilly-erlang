-module(openapi_submit_result_dto).

-export([encode/1]).

-export_type([openapi_submit_result_dto/0]).

-type openapi_submit_result_dto() ::
    #{ 'answers' := list(),
       'assignmentId' => openapi_u_uid:openapi_u_uid(),
       'score' := integer(),
       'trainingCode' := binary()
     }.

encode(#{ 'answers' := Answers,
          'assignmentId' := AssignmentId,
          'score' := Score,
          'trainingCode' := TrainingCode
        }) ->
    #{ 'answers' => Answers,
       'assignmentId' => AssignmentId,
       'score' => Score,
       'trainingCode' => TrainingCode
     }.
