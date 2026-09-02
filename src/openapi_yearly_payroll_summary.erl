-module(openapi_yearly_payroll_summary).

-export([encode/1]).

-export_type([openapi_yearly_payroll_summary/0]).

-type openapi_yearly_payroll_summary() ::
    #{ 'avg_employee_count' := integer(),
       'months' := list(),
       'year' := integer(),
       'yearly_employer_cost' := binary(),
       'yearly_gross' := binary(),
       'yearly_net' := binary()
     }.

encode(#{ 'avg_employee_count' := AvgEmployeeCount,
          'months' := Months,
          'year' := Year,
          'yearly_employer_cost' := YearlyEmployerCost,
          'yearly_gross' := YearlyGross,
          'yearly_net' := YearlyNet
        }) ->
    #{ 'avg_employee_count' => AvgEmployeeCount,
       'months' => Months,
       'year' => Year,
       'yearly_employer_cost' => YearlyEmployerCost,
       'yearly_gross' => YearlyGross,
       'yearly_net' => YearlyNet
     }.
