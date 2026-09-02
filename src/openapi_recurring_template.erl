-module(openapi_recurring_template).

-export([encode/1]).

-export_type([openapi_recurring_template/0]).

-type openapi_recurring_template() ::
    #{ 'created_at' := binary(),
       'deleted_at' => binary(),
       'end_date' => calendar:date(),
       'execution_interval' := binary(),
       'execution_status' := binary(),
       'finalize' := boolean(),
       'last_executed_at' => openapi_date_time:openapi_date_time(),
       'name' := binary(),
       'next_execution_at' => openapi_date_time:openapi_date_time(),
       'start_date' := calendar:date(),
       'template_id' := binary(),
       'template_type' := binary(),
       'updated_at' => binary(),
       'voucher_data' := openapi_any_type:openapi_any_type()
     }.

encode(#{ 'created_at' := CreatedAt,
          'deleted_at' := DeletedAt,
          'end_date' := EndDate,
          'execution_interval' := ExecutionInterval,
          'execution_status' := ExecutionStatus,
          'finalize' := Finalize,
          'last_executed_at' := LastExecutedAt,
          'name' := Name,
          'next_execution_at' := NextExecutionAt,
          'start_date' := StartDate,
          'template_id' := TemplateId,
          'template_type' := TemplateType,
          'updated_at' := UpdatedAt,
          'voucher_data' := VoucherData
        }) ->
    #{ 'created_at' => CreatedAt,
       'deleted_at' => DeletedAt,
       'end_date' => EndDate,
       'execution_interval' => ExecutionInterval,
       'execution_status' => ExecutionStatus,
       'finalize' => Finalize,
       'last_executed_at' => LastExecutedAt,
       'name' => Name,
       'next_execution_at' => NextExecutionAt,
       'start_date' => StartDate,
       'template_id' => TemplateId,
       'template_type' => TemplateType,
       'updated_at' => UpdatedAt,
       'voucher_data' => VoucherData
     }.
