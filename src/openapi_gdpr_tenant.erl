-module(openapi_gdpr_tenant).

-export([encode/1]).

-export_type([openapi_gdpr_tenant/0]).

-type openapi_gdpr_tenant() ::
    #{ 'name' := binary(),
       'role' := binary(),
       'tenantId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'name' := Name,
          'role' := Role,
          'tenantId' := TenantId
        }) ->
    #{ 'name' => Name,
       'role' => Role,
       'tenantId' => TenantId
     }.
