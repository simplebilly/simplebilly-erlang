-module(openapi_dhl_credentials).

-export([encode/1]).

-export_type([openapi_dhl_credentials/0]).

-type openapi_dhl_credentials() ::
    #{ 'api_key' := binary(),
       'client_id' => binary(),
       'client_secret' => binary()
     }.

encode(#{ 'api_key' := ApiKey,
          'client_id' := ClientId,
          'client_secret' := ClientSecret
        }) ->
    #{ 'api_key' => ApiKey,
       'client_id' => ClientId,
       'client_secret' => ClientSecret
     }.
