-module(openapi_gdpr_notification).

-export([encode/1]).

-export_type([openapi_gdpr_notification/0]).

-type openapi_gdpr_notification() ::
    #{ 'createdAt' := openapi_date_time:openapi_date_time(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'isRead' := boolean(),
       'message' => binary(),
       'tenantId' := openapi_u_uid:openapi_u_uid(),
       'title' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'isRead' := IsRead,
          'message' := Message,
          'tenantId' := TenantId,
          'title' := Title
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'isRead' => IsRead,
       'message' => Message,
       'tenantId' => TenantId,
       'title' => Title
     }.
