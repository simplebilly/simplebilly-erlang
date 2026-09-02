-module(openapi_api_response_gdpr_export_data).

-export([encode/1]).

-export_type([openapi_api_response_gdpr_export_data/0]).

-type openapi_api_response_gdpr_export_data() ::
    #{ 'activityLog' := list(),
       'apiKeys' := list(),
       'billing' := list(),
       'exportedAt' := openapi_date_time:openapi_date_time(),
       'generatedByAi' := boolean(),
       'notifications' := list(),
       'refreshTokens' := list(),
       'tenants' := list(),
       'usageEvents' := list(),
       'user' := openapi_gdpr_user:openapi_gdpr_user()
     }.

encode(#{ 'activityLog' := ActivityLog,
          'apiKeys' := ApiKeys,
          'billing' := Billing,
          'exportedAt' := ExportedAt,
          'generatedByAi' := GeneratedByAi,
          'notifications' := Notifications,
          'refreshTokens' := RefreshTokens,
          'tenants' := Tenants,
          'usageEvents' := UsageEvents,
          'user' := User
        }) ->
    #{ 'activityLog' => ActivityLog,
       'apiKeys' => ApiKeys,
       'billing' => Billing,
       'exportedAt' => ExportedAt,
       'generatedByAi' => GeneratedByAi,
       'notifications' => Notifications,
       'refreshTokens' => RefreshTokens,
       'tenants' => Tenants,
       'usageEvents' => UsageEvents,
       'user' => User
     }.
