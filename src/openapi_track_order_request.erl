-module(openapi_track_order_request).

-export([encode/1]).

-export_type([openapi_track_order_request/0]).

-type openapi_track_order_request() ::
    #{ 'email' := binary(),
       'order_number' := binary()
     }.

encode(#{ 'email' := Email,
          'order_number' := OrderNumber
        }) ->
    #{ 'email' => Email,
       'order_number' => OrderNumber
     }.
