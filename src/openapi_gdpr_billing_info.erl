-module(openapi_gdpr_billing_info).

-export([encode/1]).

-export_type([openapi_gdpr_billing_info/0]).

-type openapi_gdpr_billing_info() ::
    #{ 'currentPeriodEnd' => openapi_date_time:openapi_date_time(),
       'currentPeriodStart' => openapi_date_time:openapi_date_time(),
       'plan' => binary(),
       'status' => binary(),
       'tenantId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'currentPeriodEnd' := CurrentPeriodEnd,
          'currentPeriodStart' := CurrentPeriodStart,
          'plan' := Plan,
          'status' := Status,
          'tenantId' := TenantId
        }) ->
    #{ 'currentPeriodEnd' => CurrentPeriodEnd,
       'currentPeriodStart' => CurrentPeriodStart,
       'plan' => Plan,
       'status' => Status,
       'tenantId' => TenantId
     }.
