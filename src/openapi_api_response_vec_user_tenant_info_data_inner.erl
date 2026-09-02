-module(openapi_api_response_vec_user_tenant_info_data_inner).

-export([encode/1]).

-export_type([openapi_api_response_vec_user_tenant_info_data_inner/0]).

-type openapi_api_response_vec_user_tenant_info_data_inner() ::
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
