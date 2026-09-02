-module(openapi_emit_event_request).

-export([encode/1]).

-export_type([openapi_emit_event_request/0]).

-type openapi_emit_event_request() ::
    #{ 'event_type' := binary(),
       'payload' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'event_type' := EventType,
          'payload' := Payload
        }) ->
    #{ 'event_type' => EventType,
       'payload' => Payload
     }.
