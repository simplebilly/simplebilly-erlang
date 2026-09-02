-module(openapi_training_assignment_update).

-export([encode/1]).

-export_type([openapi_training_assignment_update/0]).

-type openapi_training_assignment_update() ::
    #{ 'assignedBy' => openapi_u_uid:openapi_u_uid(),
       'dueDate' => calendar:date(),
       'employeeId' => openapi_u_uid:openapi_u_uid(),
       'notes' => binary(),
       'status' => openapi_assignment_status:openapi_assignment_status(),
       'trainingId' => openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'assignedBy' := AssignedBy,
          'dueDate' := DueDate,
          'employeeId' := EmployeeId,
          'notes' := Notes,
          'status' := Status,
          'trainingId' := TrainingId
        }) ->
    #{ 'assignedBy' => AssignedBy,
       'dueDate' => DueDate,
       'employeeId' => EmployeeId,
       'notes' => Notes,
       'status' => Status,
       'trainingId' => TrainingId
     }.
