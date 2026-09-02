-module(openapi_ai_suggestion_request).

-export([encode/1]).

-export_type([openapi_ai_suggestion_request/0]).

-type openapi_ai_suggestion_request() ::
    #{ 'instructions' => binary(),
       'message_body' => binary(),
       'ticket_id' := openapi_u_uid:openapi_u_uid()
     }.

encode(#{ 'instructions' := Instructions,
          'message_body' := MessageBody,
          'ticket_id' := TicketId
        }) ->
    #{ 'instructions' => Instructions,
       'message_body' => MessageBody,
       'ticket_id' => TicketId
     }.
