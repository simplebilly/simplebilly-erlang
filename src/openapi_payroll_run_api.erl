-module(openapi_payroll_run_api).

-export([encode/1]).

-export_type([openapi_payroll_run_api/0]).

-type openapi_payroll_run_api() ::
    #{ 'approved_at' => openapi_date_time:openapi_date_time(),
       'approved_by' => openapi_u_uid:openapi_u_uid(),
       'created_at' := openapi_date_time:openapi_date_time(),
       'entries' := list(),
       'month' := integer(),
       'payment_date' => calendar:date(),
       'period_label' := binary(),
       'run_id' := openapi_u_uid:openapi_u_uid(),
       'status' := openapi_payroll_run_status:openapi_payroll_run_status(),
       'tenant_id' := openapi_u_uid:openapi_u_uid(),
       'total_employee_count' := integer(),
       'total_employer_cost' := binary(),
       'total_gross' := binary(),
       'total_net' := binary(),
       'total_social_security' := binary(),
       'total_taxes' := binary(),
       'updated_at' => openapi_date_time:openapi_date_time(),
       'year' := integer()
     }.

encode(#{ 'approved_at' := ApprovedAt,
          'approved_by' := ApprovedBy,
          'created_at' := CreatedAt,
          'entries' := Entries,
          'month' := Month,
          'payment_date' := PaymentDate,
          'period_label' := PeriodLabel,
          'run_id' := RunId,
          'status' := Status,
          'tenant_id' := TenantId,
          'total_employee_count' := TotalEmployeeCount,
          'total_employer_cost' := TotalEmployerCost,
          'total_gross' := TotalGross,
          'total_net' := TotalNet,
          'total_social_security' := TotalSocialSecurity,
          'total_taxes' := TotalTaxes,
          'updated_at' := UpdatedAt,
          'year' := Year
        }) ->
    #{ 'approved_at' => ApprovedAt,
       'approved_by' => ApprovedBy,
       'created_at' => CreatedAt,
       'entries' => Entries,
       'month' => Month,
       'payment_date' => PaymentDate,
       'period_label' => PeriodLabel,
       'run_id' => RunId,
       'status' => Status,
       'tenant_id' => TenantId,
       'total_employee_count' => TotalEmployeeCount,
       'total_employer_cost' => TotalEmployerCost,
       'total_gross' => TotalGross,
       'total_net' => TotalNet,
       'total_social_security' => TotalSocialSecurity,
       'total_taxes' => TotalTaxes,
       'updated_at' => UpdatedAt,
       'year' => Year
     }.
