-module(openapi_event_subscription).

-export([encode/1]).

-export_type([openapi_event_subscription/0]).

-type openapi_event_subscription() ::
    #{ 'callback_url' := binary(),
       'event_type' := binary(),
       'is_active' := boolean(),
       'subscription_id' := binary()
     }.

encode(#{ 'callback_url' := CallbackUrl,
          'event_type' := EventType,
          'is_active' := IsActive,
          'subscription_id' := SubscriptionId
        }) ->
    #{ 'callback_url' => CallbackUrl,
       'event_type' => EventType,
       'is_active' => IsActive,
       'subscription_id' => SubscriptionId
     }.
