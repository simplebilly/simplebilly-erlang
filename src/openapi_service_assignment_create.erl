-module(openapi_service_assignment_create).

-export([encode/1]).

-export_type([openapi_service_assignment_create/0]).

-type openapi_service_assignment_create() ::
    #{ 'employeeId' => openapi_u_uid:openapi_u_uid(),
       'jobId' => openapi_u_uid:openapi_u_uid(),
       'notes' => binary(),
       'scheduledDate' => calendar:date(),
       'scheduledEnd' => binary(),
       'scheduledStart' => binary(),
       'status' => openapi_service_assignment_status:openapi_service_assignment_status()
     }.

encode(#{ 'employeeId' := EmployeeId,
          'jobId' := JobId,
          'notes' := Notes,
          'scheduledDate' := ScheduledDate,
          'scheduledEnd' := ScheduledEnd,
          'scheduledStart' := ScheduledStart,
          'status' := Status
        }) ->
    #{ 'employeeId' => EmployeeId,
       'jobId' => JobId,
       'notes' => Notes,
       'scheduledDate' => ScheduledDate,
       'scheduledEnd' => ScheduledEnd,
       'scheduledStart' => ScheduledStart,
       'status' => Status
     }.
