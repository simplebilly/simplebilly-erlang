-module(openapi_gdpr_refresh_token).

-export([encode/1]).

-export_type([openapi_gdpr_refresh_token/0]).

-type openapi_gdpr_refresh_token() ::
    #{ 'createdAt' := openapi_date_time:openapi_date_time(),
       'expiresAt' := openapi_date_time:openapi_date_time(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'revokedAt' => openapi_date_time:openapi_date_time(),
       'tenantId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'expiresAt' := ExpiresAt,
          'id' := Id,
          'revokedAt' := RevokedAt,
          'tenantId' := TenantId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'expiresAt' => ExpiresAt,
       'id' => Id,
       'revokedAt' => RevokedAt,
       'tenantId' => TenantId
     }.
