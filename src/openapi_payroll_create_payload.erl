-module(openapi_payroll_create_payload).

-export([encode/1]).

-export_type([openapi_payroll_create_payload/0]).

-type openapi_payroll_create_payload() ::
    #{ 'employee_ids' := list(),
       'extra_payments' => list(),
       'month' := integer(),
       'year' := integer()
     }.

encode(#{ 'employee_ids' := EmployeeIds,
          'extra_payments' := ExtraPayments,
          'month' := Month,
          'year' := Year
        }) ->
    #{ 'employee_ids' => EmployeeIds,
       'extra_payments' => ExtraPayments,
       'month' => Month,
       'year' => Year
     }.
