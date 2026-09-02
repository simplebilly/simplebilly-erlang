-module(openapi_plausibility_report).

-export([encode/1]).

-export_type([openapi_plausibility_report/0]).

-type openapi_plausibility_report() ::
    #{ 'checks' := list(),
       'generated_at' := binary(),
       'summary' := openapi_plausibility_summary:openapi_plausibility_summary()
     }.

encode(#{ 'checks' := Checks,
          'generated_at' := GeneratedAt,
          'summary' := Summary
        }) ->
    #{ 'checks' => Checks,
       'generated_at' => GeneratedAt,
       'summary' => Summary
     }.
