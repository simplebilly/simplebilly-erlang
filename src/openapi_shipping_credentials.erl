-module(openapi_shipping_credentials).

-export([encode/1]).

-export_type([openapi_shipping_credentials/0]).

-type openapi_shipping_credentials() ::
    #{ 'dhl' => openapi_dhl_credentials:openapi_dhl_credentials(),
       'ups' => openapi_ups_credentials:openapi_ups_credentials()
     }.

encode(#{ 'dhl' := Dhl,
          'ups' := Ups
        }) ->
    #{ 'dhl' => Dhl,
       'ups' => Ups
     }.
