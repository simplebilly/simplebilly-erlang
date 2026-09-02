-module(openapi_api_response_subscription_overview_data).

-export([encode/1]).

-export_type([openapi_api_response_subscription_overview_data/0]).

-type openapi_api_response_subscription_overview_data() ::
    #{ 'currentPeriodEnd' => openapi_date_time:openapi_date_time(),
       'features' := openapi_plan_features:openapi_plan_features(),
       'isTrialing' := boolean(),
       'limits' := openapi_plan_limits:openapi_plan_limits(),
       'manageUrl' => binary(),
       'plan' := binary(),
       'planName' := binary(),
       'priceEur' := float(),
       'quantity' => integer(),
       'status' => binary(),
       'subscriptionId' => binary(),
       'trialEndsAt' => openapi_date_time:openapi_date_time(),
       'usage' := openapi_usage_snapshot:openapi_usage_snapshot()
     }.

encode(#{ 'currentPeriodEnd' := CurrentPeriodEnd,
          'features' := Features,
          'isTrialing' := IsTrialing,
          'limits' := Limits,
          'manageUrl' := ManageUrl,
          'plan' := Plan,
          'planName' := PlanName,
          'priceEur' := PriceEur,
          'quantity' := Quantity,
          'status' := Status,
          'subscriptionId' := SubscriptionId,
          'trialEndsAt' := TrialEndsAt,
          'usage' := Usage
        }) ->
    #{ 'currentPeriodEnd' => CurrentPeriodEnd,
       'features' => Features,
       'isTrialing' => IsTrialing,
       'limits' => Limits,
       'manageUrl' => ManageUrl,
       'plan' => Plan,
       'planName' => PlanName,
       'priceEur' => PriceEur,
       'quantity' => Quantity,
       'status' => Status,
       'subscriptionId' => SubscriptionId,
       'trialEndsAt' => TrialEndsAt,
       'usage' => Usage
     }.
