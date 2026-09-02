-module(openapi_shipment_status_update).

-export([encode/1]).

-export_type([openapi_shipment_status_update/0]).

-type openapi_shipment_status_update() ::
    #{ 'delivered_at' => binary(),
       'signed_by' => binary(),
       'status' := binary(),
       'tracking_number' => binary()
     }.

encode(#{ 'delivered_at' := DeliveredAt,
          'signed_by' := SignedBy,
          'status' := Status,
          'tracking_number' := TrackingNumber
        }) ->
    #{ 'delivered_at' => DeliveredAt,
       'signed_by' => SignedBy,
       'status' => Status,
       'tracking_number' => TrackingNumber
     }.
