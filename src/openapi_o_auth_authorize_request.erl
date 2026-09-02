-module(openapi_o_auth_authorize_request).

-export([encode/1]).

-export_type([openapi_o_auth_authorize_request/0]).

-type openapi_o_auth_authorize_request() ::
    #{ 'config' => openapi_any_type:openapi_any_type(),
       'platform' := binary(),
       'redirect_uri' := binary()
     }.

encode(#{ 'config' := Config,
          'platform' := Platform,
          'redirect_uri' := RedirectUri
        }) ->
    #{ 'config' => Config,
       'platform' => Platform,
       'redirect_uri' => RedirectUri
     }.
