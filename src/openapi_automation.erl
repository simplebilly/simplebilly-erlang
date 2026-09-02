-module(openapi_automation).

-export([encode/1]).

-export_type([openapi_automation/0]).

-type openapi_automation() ::
    #{ 'automationKey' := binary(),
       'config' := openapi_any_type:openapi_any_type(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'enabled' := boolean(),
       'lastRunAt' => openapi_date_time:openapi_date_time(),
       'nextRunAt' => openapi_date_time:openapi_date_time(),
       'tenantId' := openapi_u_uid:openapi_u_uid(),
       'updatedAt' := openapi_date_time:openapi_date_time()
     }.

encode(#{ 'automationKey' := AutomationKey,
          'config' := Config,
          'createdAt' := CreatedAt,
          'enabled' := Enabled,
          'lastRunAt' := LastRunAt,
          'nextRunAt' := NextRunAt,
          'tenantId' := TenantId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'automationKey' => AutomationKey,
       'config' => Config,
       'createdAt' => CreatedAt,
       'enabled' => Enabled,
       'lastRunAt' => LastRunAt,
       'nextRunAt' => NextRunAt,
       'tenantId' => TenantId,
       'updatedAt' => UpdatedAt
     }.
