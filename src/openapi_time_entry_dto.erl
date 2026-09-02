-module(openapi_time_entry_dto).

-export([encode/1]).

-export_type([openapi_time_entry_dto/0]).

-type openapi_time_entry_dto() ::
    #{ 'clock_in' => openapi_date_time:openapi_date_time(),
       'clock_out' => openapi_date_time:openapi_date_time(),
       'created_at' := openapi_date_time:openapi_date_time(),
       'date' := calendar:date(),
       'employee_id' := openapi_u_uid:openapi_u_uid(),
       'hours' => binary(),
       'notes' => binary(),
       'time_entry_id' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'clock_in' := ClockIn,
          'clock_out' := ClockOut,
          'created_at' := CreatedAt,
          'date' := Date,
          'employee_id' := EmployeeId,
          'hours' := Hours,
          'notes' := Notes,
          'time_entry_id' := TimeEntryId
        }) ->
    #{ 'clock_in' => ClockIn,
       'clock_out' => ClockOut,
       'created_at' => CreatedAt,
       'date' => Date,
       'employee_id' => EmployeeId,
       'hours' => Hours,
       'notes' => Notes,
       'time_entry_id' => TimeEntryId
     }.
