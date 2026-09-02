-module(openapi_pay_gap_info_response).

-export([encode/1]).

-export_type([openapi_pay_gap_info_response/0]).

-type openapi_pay_gap_info_response() ::
    #{ 'employee_id' := openapi_u_uid:openapi_u_uid(),
       'first_name' := binary(),
       'gender' => binary(),
       'group_median_hourly' => float(),
       'group_median_monthly' => float(),
       'group_size' := integer(),
       'job_title' := binary(),
       'last_name' := binary(),
       'overall_median_hourly' => float(),
       'own_hourly_gross' => float(),
       'own_monthly_gross' => float()
     }.

encode(#{ 'employee_id' := EmployeeId,
          'first_name' := FirstName,
          'gender' := Gender,
          'group_median_hourly' := GroupMedianHourly,
          'group_median_monthly' := GroupMedianMonthly,
          'group_size' := GroupSize,
          'job_title' := JobTitle,
          'last_name' := LastName,
          'overall_median_hourly' := OverallMedianHourly,
          'own_hourly_gross' := OwnHourlyGross,
          'own_monthly_gross' := OwnMonthlyGross
        }) ->
    #{ 'employee_id' => EmployeeId,
       'first_name' => FirstName,
       'gender' => Gender,
       'group_median_hourly' => GroupMedianHourly,
       'group_median_monthly' => GroupMedianMonthly,
       'group_size' => GroupSize,
       'job_title' => JobTitle,
       'last_name' => LastName,
       'overall_median_hourly' => OverallMedianHourly,
       'own_hourly_gross' => OwnHourlyGross,
       'own_monthly_gross' => OwnMonthlyGross
     }.
