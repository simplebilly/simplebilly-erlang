-module(openapi_ticket_message).

-export([encode/1]).

-export_type([openapi_ticket_message/0]).

-type openapi_ticket_message() ::
    #{ 'authorEmail' => binary(),
       'authorName' => binary(),
       'body' := binary(),
       'bodyHtml' => binary(),
       'channelId' => openapi_u_uid:openapi_u_uid(),
       'createdAt' := openapi_date_time:openapi_date_time(),
       'direction' := openapi_message_direction:openapi_message_direction(),
       'externalId' => binary(),
       'isInternal' := boolean(),
       'messageType' := openapi_message_type:openapi_message_type(),
       'metadata' := openapi_any_type:openapi_any_type(),
       'tenantId' := openapi_u_uid:openapi_u_uid(),
       'ticketId' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'authorEmail' := AuthorEmail,
          'authorName' := AuthorName,
          'body' := Body,
          'bodyHtml' := BodyHtml,
          'channelId' := ChannelId,
          'createdAt' := CreatedAt,
          'direction' := Direction,
          'externalId' := ExternalId,
          'isInternal' := IsInternal,
          'messageType' := MessageType,
          'metadata' := Metadata,
          'tenantId' := TenantId,
          'ticketId' := TicketId
        }) ->
    #{ 'authorEmail' => AuthorEmail,
       'authorName' => AuthorName,
       'body' => Body,
       'bodyHtml' => BodyHtml,
       'channelId' => ChannelId,
       'createdAt' => CreatedAt,
       'direction' => Direction,
       'externalId' => ExternalId,
       'isInternal' => IsInternal,
       'messageType' => MessageType,
       'metadata' => Metadata,
       'tenantId' => TenantId,
       'ticketId' => TicketId
     }.
