-module(openapi_absence_create).

-export([encode/1]).

-export_type([openapi_absence_create/0]).

-type openapi_absence_create() ::
    #{ 'absenceType' => openapi_absence_type:openapi_absence_type(),
       'approvedAt' => openapi_date_time:openapi_date_time(),
       'approvedBy' => openapi_u_uid:openapi_u_uid(),
       'employeeId' => openapi_u_uid:openapi_u_uid(),
       'endDate' => calendar:date(),
       'notes' => binary(),
       'startDate' => calendar:date(),
       'status' => openapi_absence_status:openapi_absence_status()
     }.

encode(#{ 'absenceType' := AbsenceType,
          'approvedAt' := ApprovedAt,
          'approvedBy' := ApprovedBy,
          'employeeId' := EmployeeId,
          'endDate' := EndDate,
          'notes' := Notes,
          'startDate' := StartDate,
          'status' := Status
        }) ->
    #{ 'absenceType' => AbsenceType,
       'approvedAt' => ApprovedAt,
       'approvedBy' => ApprovedBy,
       'employeeId' => EmployeeId,
       'endDate' => EndDate,
       'notes' => Notes,
       'startDate' => StartDate,
       'status' => Status
     }.
