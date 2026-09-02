-module(openapi_webhook_subscription).

-export([encode/1]).

-export_type([openapi_webhook_subscription/0]).

-type openapi_webhook_subscription() ::
    #{ 'eventType' := binary(),
       'isActive' => boolean(),
       'name' := binary(),
       'secret' := binary(),
       'url' := binary()
     }.

encode(#{ 'eventType' := EventType,
          'isActive' := IsActive,
          'name' := Name,
          'secret' := Secret,
          'url' := Url
        }) ->
    #{ 'eventType' => EventType,
       'isActive' => IsActive,
       'name' => Name,
       'secret' => Secret,
       'url' => Url
     }.
