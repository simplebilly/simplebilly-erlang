-module(openapi_shipment).

-export([encode/1]).

-export_type([openapi_shipment/0]).

-type openapi_shipment() ::
    #{ 'deliveredAt' => openapi_date_time:openapi_date_time(),
       'labelUrl' => binary(),
       'lineItemsShipment' => openapi_any_type:openapi_any_type(),
       'orderId' := binary(),
       'recipientAddress' => openapi_any_type:openapi_any_type(),
       'shipmentDate' := calendar:date(),
       'shippingCarrier' := binary(),
       'shippingCost' => binary(),
       'shippingMethod' => binary(),
       'signedBy' => binary(),
       'status' := binary(),
       'trackingEvents' => openapi_any_type:openapi_any_type(),
       'trackingNumber' => binary(),
       'trackingUrl' => binary(),
       'weightKg' => float()
     }.

encode(#{ 'deliveredAt' := DeliveredAt,
          'labelUrl' := LabelUrl,
          'lineItemsShipment' := LineItemsShipment,
          'orderId' := OrderId,
          'recipientAddress' := RecipientAddress,
          'shipmentDate' := ShipmentDate,
          'shippingCarrier' := ShippingCarrier,
          'shippingCost' := ShippingCost,
          'shippingMethod' := ShippingMethod,
          'signedBy' := SignedBy,
          'status' := Status,
          'trackingEvents' := TrackingEvents,
          'trackingNumber' := TrackingNumber,
          'trackingUrl' := TrackingUrl,
          'weightKg' := WeightKg
        }) ->
    #{ 'deliveredAt' => DeliveredAt,
       'labelUrl' => LabelUrl,
       'lineItemsShipment' => LineItemsShipment,
       'orderId' => OrderId,
       'recipientAddress' => RecipientAddress,
       'shipmentDate' => ShipmentDate,
       'shippingCarrier' => ShippingCarrier,
       'shippingCost' => ShippingCost,
       'shippingMethod' => ShippingMethod,
       'signedBy' => SignedBy,
       'status' => Status,
       'trackingEvents' => TrackingEvents,
       'trackingNumber' => TrackingNumber,
       'trackingUrl' => TrackingUrl,
       'weightKg' => WeightKg
     }.
