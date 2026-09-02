-module(openapi_notification_dto).

-export([encode/1]).

-export_type([openapi_notification_dto/0]).

-type openapi_notification_dto() ::
    #{ 'created_at' := openapi_date_time:openapi_date_time(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'is_read' := boolean(),
       'message' => binary(),
       'sent_via_email' := boolean(),
       'tenant_id' := openapi_u_uid:openapi_u_uid(),
       'title' := binary(),
       'user_id' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'created_at' := CreatedAt,
          'id' := Id,
          'is_read' := IsRead,
          'message' := Message,
          'sent_via_email' := SentViaEmail,
          'tenant_id' := TenantId,
          'title' := Title,
          'user_id' := UserId
        }) ->
    #{ 'created_at' => CreatedAt,
       'id' => Id,
       'is_read' => IsRead,
       'message' => Message,
       'sent_via_email' => SentViaEmail,
       'tenant_id' => TenantId,
       'title' => Title,
       'user_id' => UserId
     }.
