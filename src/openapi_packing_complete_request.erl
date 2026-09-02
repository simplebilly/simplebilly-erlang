-module(openapi_packing_complete_request).

-export([encode/1]).

-export_type([openapi_packing_complete_request/0]).

-type openapi_packing_complete_request() ::
    #{ 'notes' => binary(),
       'order_number' := binary(),
       'shipment_id' => binary(),
       'video_url' => binary()
     }.

encode(#{ 'notes' := Notes,
          'order_number' := OrderNumber,
          'shipment_id' := ShipmentId,
          'video_url' := VideoUrl
        }) ->
    #{ 'notes' => Notes,
       'order_number' => OrderNumber,
       'shipment_id' => ShipmentId,
       'video_url' => VideoUrl
     }.
