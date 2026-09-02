-module(openapi_create_ticket_request).

-export([encode/1]).

-export_type([openapi_create_ticket_request/0]).

-type openapi_create_ticket_request() ::
    #{ 'channel_id' => openapi_u_uid:openapi_u_uid(),
       'channel_type' => binary(),
       'customer_email' => binary(),
       'customer_id' => binary(),
       'customer_name' => binary(),
       'external_id' => binary(),
       'message_body' := binary(),
       'order_ref' => binary(),
       'subject' := binary()
     }.

encode(#{ 'channel_id' := ChannelId,
          'channel_type' := ChannelType,
          'customer_email' := CustomerEmail,
          'customer_id' := CustomerId,
          'customer_name' := CustomerName,
          'external_id' := ExternalId,
          'message_body' := MessageBody,
          'order_ref' := OrderRef,
          'subject' := Subject
        }) ->
    #{ 'channel_id' => ChannelId,
       'channel_type' => ChannelType,
       'customer_email' => CustomerEmail,
       'customer_id' => CustomerId,
       'customer_name' => CustomerName,
       'external_id' => ExternalId,
       'message_body' => MessageBody,
       'order_ref' => OrderRef,
       'subject' => Subject
     }.
