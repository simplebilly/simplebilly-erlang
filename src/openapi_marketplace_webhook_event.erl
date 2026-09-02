-module(openapi_marketplace_webhook_event).

-export([encode/1]).

-export_type([openapi_marketplace_webhook_event/0]).

-type openapi_marketplace_webhook_event() ::
    #{ 'connectionId' := binary(),
       'eventBody' => openapi_any_type:openapi_any_type(),
       'eventType' := binary(),
       'headers' => openapi_any_type:openapi_any_type(),
       'platform' := binary(),
       'processed' => boolean(),
       'processingError' => binary()
     }.

encode(#{ 'connectionId' := ConnectionId,
          'eventBody' := EventBody,
          'eventType' := EventType,
          'headers' := Headers,
          'platform' := Platform,
          'processed' := Processed,
          'processingError' := ProcessingError
        }) ->
    #{ 'connectionId' => ConnectionId,
       'eventBody' => EventBody,
       'eventType' => EventType,
       'headers' => Headers,
       'platform' => Platform,
       'processed' => Processed,
       'processingError' => ProcessingError
     }.
