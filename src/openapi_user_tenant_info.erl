-module(openapi_user_tenant_info).

-export([encode/1]).

-export_type([openapi_user_tenant_info/0]).

-type openapi_user_tenant_info() ::
    #{ 'custom_domain' => binary(),
       'role' := binary(),
       'subdomain' => binary(),
       'tenant_id' := openapi_u_uid:openapi_u_uid(),
       'tenant_name' := binary()
     }.

encode(#{ 'custom_domain' := CustomDomain,
          'role' := Role,
          'subdomain' := Subdomain,
          'tenant_id' := TenantId,
          'tenant_name' := TenantName
        }) ->
    #{ 'custom_domain' => CustomDomain,
       'role' => Role,
       'subdomain' => Subdomain,
       'tenant_id' => TenantId,
       'tenant_name' => TenantName
     }.
