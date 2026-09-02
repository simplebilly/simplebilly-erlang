-module(openapi_plausibility_summary).

-export([encode/1]).

-export_type([openapi_plausibility_summary/0]).

-type openapi_plausibility_summary() ::
    #{ 'errors' := integer(),
       'overall_status' := openapi_check_status:openapi_check_status(),
       'passed' := integer(),
       'total_checks' := integer(),
       'warnings' := integer()
     }.

encode(#{ 'errors' := Errors,
          'overall_status' := OverallStatus,
          'passed' := Passed,
          'total_checks' := TotalChecks,
          'warnings' := Warnings
        }) ->
    #{ 'errors' => Errors,
       'overall_status' => OverallStatus,
       'passed' => Passed,
       'total_checks' => TotalChecks,
       'warnings' => Warnings
     }.
