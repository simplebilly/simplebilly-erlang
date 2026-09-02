-module(openapi_payroll_summary).

-export([encode/1]).

-export_type([openapi_payroll_summary/0]).

-type openapi_payroll_summary() ::
    #{ 'firstName' := binary(),
       'hourlyGross' => binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'jobTitle' := binary(),
       'lastName' := binary(),
       'monthlySalary' => binary(),
       'months' := list(),
       'weeklyHours' => binary(),
       'year' := integer()
     }.

encode(#{ 'firstName' := FirstName,
          'hourlyGross' := HourlyGross,
          'id' := Id,
          'jobTitle' := JobTitle,
          'lastName' := LastName,
          'monthlySalary' := MonthlySalary,
          'months' := Months,
          'weeklyHours' := WeeklyHours,
          'year' := Year
        }) ->
    #{ 'firstName' => FirstName,
       'hourlyGross' => HourlyGross,
       'id' => Id,
       'jobTitle' => JobTitle,
       'lastName' => LastName,
       'monthlySalary' => MonthlySalary,
       'months' => Months,
       'weeklyHours' => WeeklyHours,
       'year' => Year
     }.
