-module(openapi_gateway_o_auth_authorize_request).

-export([encode/1]).

-export_type([openapi_gateway_o_auth_authorize_request/0]).

-type openapi_gateway_o_auth_authorize_request() ::
    #{ 'gateway_type' := binary(),
       'redirect_uri' := binary()
     }.

encode(#{ 'gateway_type' := GatewayType,
          'redirect_uri' := RedirectUri
        }) ->
    #{ 'gateway_type' => GatewayType,
       'redirect_uri' => RedirectUri
     }.
