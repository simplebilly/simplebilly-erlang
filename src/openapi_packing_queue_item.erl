-module(openapi_packing_queue_item).

-export([encode/1]).

-export_type([openapi_packing_queue_item/0]).

-type openapi_packing_queue_item() ::
    #{ 'created_at' := binary(),
       'customer_id' := binary(),
       'delivery_note_printed' := boolean(),
       'items' := openapi_any_type:openapi_any_type(),
       'items_count' := integer(),
       'label_printed' := boolean(),
       'order_number' := binary(),
       'order_status' := binary(),
       'shipment_id' => binary(),
       'shipping_address' => openapi_any_type:openapi_any_type(),
       'shipping_method' := binary(),
       'tracking_number' => binary(),
       'video_recording' => binary()
     }.

encode(#{ 'created_at' := CreatedAt,
          'customer_id' := CustomerId,
          'delivery_note_printed' := DeliveryNotePrinted,
          'items' := Items,
          'items_count' := ItemsCount,
          'label_printed' := LabelPrinted,
          'order_number' := OrderNumber,
          'order_status' := OrderStatus,
          'shipment_id' := ShipmentId,
          'shipping_address' := ShippingAddress,
          'shipping_method' := ShippingMethod,
          'tracking_number' := TrackingNumber,
          'video_recording' := VideoRecording
        }) ->
    #{ 'created_at' => CreatedAt,
       'customer_id' => CustomerId,
       'delivery_note_printed' => DeliveryNotePrinted,
       'items' => Items,
       'items_count' => ItemsCount,
       'label_printed' => LabelPrinted,
       'order_number' => OrderNumber,
       'order_status' => OrderStatus,
       'shipment_id' => ShipmentId,
       'shipping_address' => ShippingAddress,
       'shipping_method' => ShippingMethod,
       'tracking_number' => TrackingNumber,
       'video_recording' => VideoRecording
     }.
