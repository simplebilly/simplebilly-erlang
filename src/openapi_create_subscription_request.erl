-module(openapi_create_subscription_request).

-export([encode/1]).

-export_type([openapi_create_subscription_request/0]).

-type openapi_create_subscription_request() ::
    #{ 'event_type' := binary(),
       'is_active' => boolean(),
       'name' := binary(),
       'secret' => binary(),
       'url' := binary()
     }.

encode(#{ 'event_type' := EventType,
          'is_active' := IsActive,
          'name' := Name,
          'secret' := Secret,
          'url' := Url
        }) ->
    #{ 'event_type' => EventType,
       'is_active' => IsActive,
       'name' => Name,
       'secret' => Secret,
       'url' => Url
     }.
