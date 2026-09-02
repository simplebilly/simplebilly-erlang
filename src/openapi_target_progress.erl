-module(openapi_target_progress).

-export([encode/1]).

-export_type([openapi_target_progress/0]).

-type openapi_target_progress() ::
    #{ 'base_value' := float(),
       'base_year' := integer(),
       'description' := binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'progress_pct' => float(),
       'scope' := binary(),
       'target_value' := float(),
       'target_year' := integer()
     }.

encode(#{ 'base_value' := BaseValue,
          'base_year' := BaseYear,
          'description' := Description,
          'id' := Id,
          'progress_pct' := ProgressPct,
          'scope' := Scope,
          'target_value' := TargetValue,
          'target_year' := TargetYear
        }) ->
    #{ 'base_value' => BaseValue,
       'base_year' => BaseYear,
       'description' => Description,
       'id' => Id,
       'progress_pct' => ProgressPct,
       'scope' => Scope,
       'target_value' => TargetValue,
       'target_year' => TargetYear
     }.
