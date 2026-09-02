-module(openapi_o_auth_authorize_response).

-export([encode/1]).

-export_type([openapi_o_auth_authorize_response/0]).

-type openapi_o_auth_authorize_response() ::
    #{ 'authorization_url' := binary(),
       'state' := binary()
     }.

encode(#{ 'authorization_url' := AuthorizationUrl,
          'state' := State
        }) ->
    #{ 'authorization_url' => AuthorizationUrl,
       'state' => State
     }.
