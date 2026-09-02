-module(openapi_gdpr_usage_event).

-export([encode/1]).

-export_type([openapi_gdpr_usage_event/0]).

-type openapi_gdpr_usage_event() ::
    #{ 'createdAt' := openapi_date_time:openapi_date_time(),
       'eventType' := binary(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer(),
       'tenantId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'eventType' := EventType,
          'id' := Id,
          'quantity' := Quantity,
          'tenantId' := TenantId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'eventType' => EventType,
       'id' => Id,
       'quantity' => Quantity,
       'tenantId' => TenantId
     }.
