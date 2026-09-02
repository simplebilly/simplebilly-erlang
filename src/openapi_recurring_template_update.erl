-module(openapi_recurring_template_update).

-export([encode/1]).

-export_type([openapi_recurring_template_update/0]).

-type openapi_recurring_template_update() ::
    #{ 'endDate' => calendar:date(),
       'executionInterval' => binary(),
       'executionStatus' => openapi_execution_status:openapi_execution_status(),
       'finalize' => boolean(),
       'lastExecutedAt' => openapi_date_time:openapi_date_time(),
       'name' => binary(),
       'nextExecutionAt' => openapi_date_time:openapi_date_time(),
       'startDate' => calendar:date(),
       'templateType' => openapi_recurring_template_type:openapi_recurring_template_type(),
       'voucherData' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'endDate' := EndDate,
          'executionInterval' := ExecutionInterval,
          'executionStatus' := ExecutionStatus,
          'finalize' := Finalize,
          'lastExecutedAt' := LastExecutedAt,
          'name' := Name,
          'nextExecutionAt' := NextExecutionAt,
          'startDate' := StartDate,
          'templateType' := TemplateType,
          'voucherData' := VoucherData
        }) ->
    #{ 'endDate' => EndDate,
       'executionInterval' => ExecutionInterval,
       'executionStatus' => ExecutionStatus,
       'finalize' => Finalize,
       'lastExecutedAt' => LastExecutedAt,
       'name' => Name,
       'nextExecutionAt' => NextExecutionAt,
       'startDate' => StartDate,
       'templateType' => TemplateType,
       'voucherData' => VoucherData
     }.
