-module(openapi_quota_overview).

-export([encode/1]).

-export_type([openapi_quota_overview/0]).

-type openapi_quota_overview() ::
    #{ 'features' := openapi_plan_features:openapi_plan_features(),
       'isTrialing' := boolean(),
       'limits' := openapi_plan_limits:openapi_plan_limits(),
       'metered' := list(),
       'plan' := binary(),
       'planName' := binary(),
       'trialEndsAt' => openapi_date_time:openapi_date_time(),
       'usage' := openapi_usage_snapshot:openapi_usage_snapshot()
     }.

encode(#{ 'features' := Features,
          'isTrialing' := IsTrialing,
          'limits' := Limits,
          'metered' := Metered,
          'plan' := Plan,
          'planName' := PlanName,
          'trialEndsAt' := TrialEndsAt,
          'usage' := Usage
        }) ->
    #{ 'features' => Features,
       'isTrialing' => IsTrialing,
       'limits' => Limits,
       'metered' => Metered,
       'plan' => Plan,
       'planName' => PlanName,
       'trialEndsAt' => TrialEndsAt,
       'usage' => Usage
     }.
