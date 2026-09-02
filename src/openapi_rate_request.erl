-module(openapi_rate_request).

-export([encode/1]).

-export_type([openapi_rate_request/0]).

-type openapi_rate_request() ::
    #{ 'customer' => openapi_customer_info:openapi_customer_info(),
       'packages' := list(),
       'recipient' := openapi_address:openapi_address(),
       'sender' := openapi_address:openapi_address()
     }.

encode(#{ 'customer' := Customer,
          'packages' := Packages,
          'recipient' := Recipient,
          'sender' := Sender
        }) ->
    #{ 'customer' => Customer,
       'packages' => Packages,
       'recipient' => Recipient,
       'sender' => Sender
     }.
