-module(openapi_update_connection_request).

-export([encode/1]).

-export_type([openapi_update_connection_request/0]).

-type openapi_update_connection_request() ::
    #{ 'api_key' => binary(),
       'api_secret' => binary(),
       'config' => openapi_any_type:openapi_any_type(),
       'is_active' => boolean(),
       'label' => binary(),
       'shop_domain' => binary()
     }.

encode(#{ 'api_key' := ApiKey,
          'api_secret' := ApiSecret,
          'config' := Config,
          'is_active' := IsActive,
          'label' := Label,
          'shop_domain' := ShopDomain
        }) ->
    #{ 'api_key' => ApiKey,
       'api_secret' => ApiSecret,
       'config' => Config,
       'is_active' => IsActive,
       'label' => Label,
       'shop_domain' => ShopDomain
     }.
