-module(openapi_suitability_request).

-export([encode/1]).

-export_type([openapi_suitability_request/0]).

-type openapi_suitability_request() ::
    #{ 'customer_annual_volume' => integer(),
       'items' := list(),
       'recipient' := openapi_address:openapi_address(),
       'sender' := openapi_address:openapi_address()
     }.

encode(#{ 'customer_annual_volume' := CustomerAnnualVolume,
          'items' := Items,
          'recipient' := Recipient,
          'sender' := Sender
        }) ->
    #{ 'customer_annual_volume' => CustomerAnnualVolume,
       'items' => Items,
       'recipient' => Recipient,
       'sender' => Sender
     }.
