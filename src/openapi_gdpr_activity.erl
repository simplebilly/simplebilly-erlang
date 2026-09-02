-module(openapi_gdpr_activity).

-export([encode/1]).

-export_type([openapi_gdpr_activity/0]).

-type openapi_gdpr_activity() ::
    #{ 'action' := binary(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'description' => binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'tenantId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'action' := Action,
          'createdAt' := CreatedAt,
          'description' := Description,
          'id' := Id,
          'tenantId' := TenantId
        }) ->
    #{ 'action' => Action,
       'createdAt' => CreatedAt,
       'description' => Description,
       'id' => Id,
       'tenantId' => TenantId
     }.
