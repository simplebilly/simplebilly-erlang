-module(openapi_gateway_o_auth_callback_request).

-export([encode/1]).

-export_type([openapi_gateway_o_auth_callback_request/0]).

-type openapi_gateway_o_auth_callback_request() ::
    #{ 'code' := binary(),
       'gateway_type' := binary(),
       'redirect_uri' := binary(),
       'state' := binary()
     }.

encode(#{ 'code' := Code,
          'gateway_type' := GatewayType,
          'redirect_uri' := RedirectUri,
          'state' := State
        }) ->
    #{ 'code' => Code,
       'gateway_type' => GatewayType,
       'redirect_uri' => RedirectUri,
       'state' => State
     }.
