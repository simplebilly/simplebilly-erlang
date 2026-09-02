-module(openapi_data_quality).

-export([encode/1]).

-export_type([openapi_data_quality/0]).

-type openapi_data_quality() ::
    #{ 'activity_lines' := integer(),
       'activity_share_pct' := float(),
       'spend_lines' := integer()
     }.

encode(#{ 'activity_lines' := ActivityLines,
          'activity_share_pct' := ActivitySharePct,
          'spend_lines' := SpendLines
        }) ->
    #{ 'activity_lines' => ActivityLines,
       'activity_share_pct' => ActivitySharePct,
       'spend_lines' => SpendLines
     }.
