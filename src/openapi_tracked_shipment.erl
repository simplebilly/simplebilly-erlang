-module(openapi_tracked_shipment).

-export([encode/1]).

-export_type([openapi_tracked_shipment/0]).

-type openapi_tracked_shipment() ::
    #{ 'carrier' := binary(),
       'events' := list(),
       'label_url' => binary(),
       'status' := binary(),
       'tracking_number' => binary(),
       'tracking_url' => binary()
     }.

encode(#{ 'carrier' := Carrier,
          'events' := Events,
          'label_url' := LabelUrl,
          'status' := Status,
          'tracking_number' := TrackingNumber,
          'tracking_url' := TrackingUrl
        }) ->
    #{ 'carrier' => Carrier,
       'events' => Events,
       'label_url' => LabelUrl,
       'status' => Status,
       'tracking_number' => TrackingNumber,
       'tracking_url' => TrackingUrl
     }.
