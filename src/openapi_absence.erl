-module(openapi_absence).

-export([encode/1]).

-export_type([openapi_absence/0]).

-type openapi_absence() ::
    #{ 'absenceType' => openapi_absence_type:openapi_absence_type(),
       'approvedAt' => openapi_date_time:openapi_date_time(),
       'approvedBy' => openapi_u_uid:openapi_u_uid(),
       'createdAt' => openapi_date_time:openapi_date_time(),
       'deletedAt' => openapi_date_time:openapi_date_time(),
       'employeeId' => openapi_u_uid:openapi_u_uid(),
       'endDate' => calendar:date(),
       'id' => openapi_u_uid:openapi_u_uid(),
       'notes' => binary(),
       'startDate' => calendar:date(),
       'status' => openapi_absence_status:openapi_absence_status(),
       'tenantId' => openapi_u_uid:openapi_u_uid(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'absenceType' := AbsenceType,
          'approvedAt' := ApprovedAt,
          'approvedBy' := ApprovedBy,
          'createdAt' := CreatedAt,
          'deletedAt' := DeletedAt,
          'employeeId' := EmployeeId,
          'endDate' := EndDate,
          'id' := Id,
          'notes' := Notes,
          'startDate' := StartDate,
          'status' := Status,
          'tenantId' := TenantId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'absenceType' => AbsenceType,
       'approvedAt' => ApprovedAt,
       'approvedBy' => ApprovedBy,
       'createdAt' => CreatedAt,
       'deletedAt' => DeletedAt,
       'employeeId' => EmployeeId,
       'endDate' => EndDate,
       'id' => Id,
       'notes' => Notes,
       'startDate' => StartDate,
       'status' => Status,
       'tenantId' => TenantId,
       'updatedAt' => UpdatedAt
     }.
