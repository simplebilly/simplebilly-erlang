-module(openapi_webhook_event).

-export([encode/1]).

-export_type([openapi_webhook_event/0]).

-type openapi_webhook_event() ::
    #{ 'attempts' => integer(),
       'channel' => binary(),
       'direction' := openapi_webhook_direction:openapi_webhook_direction(),
       'eventType' := binary(),
       'lastError' => binary(),
       'payload' => openapi_any_type:openapi_any_type(),
       'status' => openapi_webhook_event_status:openapi_webhook_event_status()
     }.

encode(#{ 'attempts' := Attempts,
          'channel' := Channel,
          'direction' := Direction,
          'eventType' := EventType,
          'lastError' := LastError,
          'payload' := Payload,
          'status' := Status
        }) ->
    #{ 'attempts' => Attempts,
       'channel' => Channel,
       'direction' => Direction,
       'eventType' => EventType,
       'lastError' => LastError,
       'payload' => Payload,
       'status' => Status
     }.
