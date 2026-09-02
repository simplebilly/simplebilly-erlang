-module(openapi_job_title_gap).

-export([encode/1]).

-export_type([openapi_job_title_gap/0]).

-type openapi_job_title_gap() ::
    #{ 'employee_count' := integer(),
       'female_mean_hourly' := binary(),
       'job_title' := binary(),
       'male_mean_hourly' := binary(),
       'mean_gap_pct' := float(),
       'median_gap_pct' := float()
     }.

encode(#{ 'employee_count' := EmployeeCount,
          'female_mean_hourly' := FemaleMeanHourly,
          'job_title' := JobTitle,
          'male_mean_hourly' := MaleMeanHourly,
          'mean_gap_pct' := MeanGapPct,
          'median_gap_pct' := MedianGapPct
        }) ->
    #{ 'employee_count' => EmployeeCount,
       'female_mean_hourly' => FemaleMeanHourly,
       'job_title' => JobTitle,
       'male_mean_hourly' => MaleMeanHourly,
       'mean_gap_pct' => MeanGapPct,
       'median_gap_pct' => MedianGapPct
     }.
