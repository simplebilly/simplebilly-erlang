-module(openapi_support_ticket).

-export([encode/1]).

-export_type([openapi_support_ticket/0]).

-type openapi_support_ticket() ::
    #{ 'assignedTo' => openapi_u_uid:openapi_u_uid(),
       'channelId' => openapi_u_uid:openapi_u_uid(),
       'channelType' => openapi_support_channel_type:openapi_support_channel_type(),
       'closedAt' => openapi_date_time:openapi_date_time(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'customerEmail' => binary(),
       'customerId' => binary(),
       'customerName' => binary(),
       'externalId' => binary(),
       'firstMessageAt' := openapi_date_time:openapi_date_time(),
       'lastMessageAt' := openapi_date_time:openapi_date_time(),
       'leadId' => openapi_u_uid:openapi_u_uid(),
       'messageCount' := integer(),
       'orderRef' => binary(),
       'priority' := openapi_ticket_priority:openapi_ticket_priority(),
       'resolution' => binary(),
       'status' := openapi_support_ticket_status:openapi_support_ticket_status(),
       'subject' := binary(),
       'tags' := openapi_any_type:openapi_any_type(),
       'tenantId' := openapi_u_uid:openapi_u_uid(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'assignedTo' := AssignedTo,
          'channelId' := ChannelId,
          'channelType' := ChannelType,
          'closedAt' := ClosedAt,
          'createdAt' := CreatedAt,
          'customerEmail' := CustomerEmail,
          'customerId' := CustomerId,
          'customerName' := CustomerName,
          'externalId' := ExternalId,
          'firstMessageAt' := FirstMessageAt,
          'lastMessageAt' := LastMessageAt,
          'leadId' := LeadId,
          'messageCount' := MessageCount,
          'orderRef' := OrderRef,
          'priority' := Priority,
          'resolution' := Resolution,
          'status' := Status,
          'subject' := Subject,
          'tags' := Tags,
          'tenantId' := TenantId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'assignedTo' => AssignedTo,
       'channelId' => ChannelId,
       'channelType' => ChannelType,
       'closedAt' => ClosedAt,
       'createdAt' => CreatedAt,
       'customerEmail' => CustomerEmail,
       'customerId' => CustomerId,
       'customerName' => CustomerName,
       'externalId' => ExternalId,
       'firstMessageAt' => FirstMessageAt,
       'lastMessageAt' => LastMessageAt,
       'leadId' => LeadId,
       'messageCount' => MessageCount,
       'orderRef' => OrderRef,
       'priority' => Priority,
       'resolution' => Resolution,
       'status' => Status,
       'subject' => Subject,
       'tags' => Tags,
       'tenantId' => TenantId,
       'updatedAt' => UpdatedAt
     }.
