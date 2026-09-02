-module(openapi_payroll_summary_item).

-export([encode/1]).

-export_type([openapi_payroll_summary_item/0]).

-type openapi_payroll_summary_item() ::
    #{ 'employee_count' := integer(),
       'month' := binary(),
       'status' := openapi_payroll_run_status:openapi_payroll_run_status(),
       'total_employer_cost' := binary(),
       'total_gross' := binary(),
       'total_net' := binary(),
       'year' := integer()
     }.

encode(#{ 'employee_count' := EmployeeCount,
          'month' := Month,
          'status' := Status,
          'total_employer_cost' := TotalEmployerCost,
          'total_gross' := TotalGross,
          'total_net' := TotalNet,
          'year' := Year
        }) ->
    #{ 'employee_count' => EmployeeCount,
       'month' => Month,
       'status' => Status,
       'total_employer_cost' => TotalEmployerCost,
       'total_gross' => TotalGross,
       'total_net' => TotalNet,
       'year' => Year
     }.
