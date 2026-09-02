-module(openapi_ups_credentials).

-export([encode/1]).

-export_type([openapi_ups_credentials/0]).

-type openapi_ups_credentials() ::
    #{ 'client_id' := binary(),
       'client_secret' := binary(),
       'shipper_number' => binary()
     }.

encode(#{ 'client_id' := ClientId,
          'client_secret' := ClientSecret,
          'shipper_number' := ShipperNumber
        }) ->
    #{ 'client_id' => ClientId,
       'client_secret' => ClientSecret,
       'shipper_number' => ShipperNumber
     }.
