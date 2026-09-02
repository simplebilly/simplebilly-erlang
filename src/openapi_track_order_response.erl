-module(openapi_track_order_response).

-export([encode/1]).

-export_type([openapi_track_order_response/0]).

-type openapi_track_order_response() ::
    #{ 'order_number' := binary(),
       'order_status' := binary(),
       'shipments' := list()
     }.

encode(#{ 'order_number' := OrderNumber,
          'order_status' := OrderStatus,
          'shipments' := Shipments
        }) ->
    #{ 'order_number' => OrderNumber,
       'order_status' => OrderStatus,
       'shipments' => Shipments
     }.
