-module(openapi_tracking_info).

-export([encode/1]).

-export_type([openapi_tracking_info/0]).

-type openapi_tracking_info() ::
    #{ 'carrier' := binary(),
       'estimated_delivery' => binary(),
       'events' := list(),
       'raw_response' => openapi_any_type:openapi_any_type(),
       'status' := binary(),
       'tracking_number' := binary()
     }.

encode(#{ 'carrier' := Carrier,
          'estimated_delivery' := EstimatedDelivery,
          'events' := Events,
          'raw_response' := RawResponse,
          'status' := Status,
          'tracking_number' := TrackingNumber
        }) ->
    #{ 'carrier' => Carrier,
       'estimated_delivery' => EstimatedDelivery,
       'events' => Events,
       'raw_response' => RawResponse,
       'status' => Status,
       'tracking_number' => TrackingNumber
     }.
