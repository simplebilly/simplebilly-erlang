-module(openapi_public_delivery_appointment_request).

-export([encode/1]).

-export_type([openapi_public_delivery_appointment_request/0]).

-type openapi_public_delivery_appointment_request() ::
    #{ 'email' := binary(),
       'notes' => binary(),
       'requestedDate' := calendar:date(),
       'supplierName' := binary(),
       'timeSlot' => binary(),
       'warehouseCode' := binary()
     }.

encode(#{ 'email' := Email,
          'notes' := Notes,
          'requestedDate' := RequestedDate,
          'supplierName' := SupplierName,
          'timeSlot' := TimeSlot,
          'warehouseCode' := WarehouseCode
        }) ->
    #{ 'email' => Email,
       'notes' => Notes,
       'requestedDate' => RequestedDate,
       'supplierName' => SupplierName,
       'timeSlot' => TimeSlot,
       'warehouseCode' => WarehouseCode
     }.
