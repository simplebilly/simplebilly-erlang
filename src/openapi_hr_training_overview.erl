-module(openapi_hr_training_overview).

-export([encode/1]).

-export_type([openapi_hr_training_overview/0]).

-type openapi_hr_training_overview() ::
    #{ 'assignedCount' := integer(),
       'code' := binary(),
       'completedCount' := integer(),
       'overdueCount' := integer(),
       'title' := binary(),
       'trainingId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'assignedCount' := AssignedCount,
          'code' := Code,
          'completedCount' := CompletedCount,
          'overdueCount' := OverdueCount,
          'title' := Title,
          'trainingId' := TrainingId
        }) ->
    #{ 'assignedCount' => AssignedCount,
       'code' => Code,
       'completedCount' => CompletedCount,
       'overdueCount' => OverdueCount,
       'title' => Title,
       'trainingId' => TrainingId
     }.
