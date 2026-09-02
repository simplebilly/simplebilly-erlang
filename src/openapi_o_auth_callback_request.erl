-module(openapi_o_auth_callback_request).

-export([encode/1]).

-export_type([openapi_o_auth_callback_request/0]).

-type openapi_o_auth_callback_request() ::
    #{ 'code' := binary(),
       'config' => openapi_any_type:openapi_any_type(),
       'connection_id' => binary(),
       'platform' := binary(),
       'shop_domain' => binary(),
       'state' := binary()
     }.

encode(#{ 'code' := Code,
          'config' := Config,
          'connection_id' := ConnectionId,
          'platform' := Platform,
          'shop_domain' := ShopDomain,
          'state' := State
        }) ->
    #{ 'code' => Code,
       'config' => Config,
       'connection_id' => ConnectionId,
       'platform' => Platform,
       'shop_domain' => ShopDomain,
       'state' => State
     }.
