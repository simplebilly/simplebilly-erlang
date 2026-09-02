-module(openapi_training_assignment).

-export([encode/1]).

-export_type([openapi_training_assignment/0]).

-type openapi_training_assignment() ::
    #{ 'assignedBy' => openapi_u_uid:openapi_u_uid(),
       'createdAt' => openapi_date_time:openapi_date_time(),
       'deletedAt' => openapi_date_time:openapi_date_time(),
       'dueDate' => calendar:date(),
       'employeeId' => openapi_u_uid:openapi_u_uid(),
       'id' => openapi_u_uid:openapi_u_uid(),
       'notes' => binary(),
       'status' => openapi_assignment_status:openapi_assignment_status(),
       'tenantId' => openapi_u_uid:openapi_u_uid(),
       'trainingId' => openapi_u_uid:openapi_u_uid(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'assignedBy' := AssignedBy,
          'createdAt' := CreatedAt,
          'deletedAt' := DeletedAt,
          'dueDate' := DueDate,
          'employeeId' := EmployeeId,
          'id' := Id,
          'notes' := Notes,
          'status' := Status,
          'tenantId' := TenantId,
          'trainingId' := TrainingId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'assignedBy' => AssignedBy,
       'createdAt' => CreatedAt,
       'deletedAt' => DeletedAt,
       'dueDate' => DueDate,
       'employeeId' => EmployeeId,
       'id' => Id,
       'notes' => Notes,
       'status' => Status,
       'tenantId' => TenantId,
       'trainingId' => TrainingId,
       'updatedAt' => UpdatedAt
     }.
