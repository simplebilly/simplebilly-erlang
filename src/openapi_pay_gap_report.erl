-module(openapi_pay_gap_report).

-export([encode/1]).

-export_type([openapi_pay_gap_report/0]).

-type openapi_pay_gap_report() ::
    #{ 'by_job_title' := list(),
       'diverse_count' := integer(),
       'employee_count' := integer(),
       'female_count' := integer(),
       'male_count' := integer(),
       'mean_gap_pct' := float(),
       'median_gap_pct' := float(),
       'quartiles' := list()
     }.

encode(#{ 'by_job_title' := ByJobTitle,
          'diverse_count' := DiverseCount,
          'employee_count' := EmployeeCount,
          'female_count' := FemaleCount,
          'male_count' := MaleCount,
          'mean_gap_pct' := MeanGapPct,
          'median_gap_pct' := MedianGapPct,
          'quartiles' := Quartiles
        }) ->
    #{ 'by_job_title' => ByJobTitle,
       'diverse_count' => DiverseCount,
       'employee_count' => EmployeeCount,
       'female_count' => FemaleCount,
       'male_count' => MaleCount,
       'mean_gap_pct' => MeanGapPct,
       'median_gap_pct' => MedianGapPct,
       'quartiles' => Quartiles
     }.
