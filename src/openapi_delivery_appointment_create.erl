-module(openapi_delivery_appointment_create).

-export([encode/1]).

-export_type([openapi_delivery_appointment_create/0]).

-type openapi_delivery_appointment_create() ::
    #{ 'email' := binary(),
       'notes' => binary(),
       'phone' => binary(),
       'requestedDate' := calendar:date(),
       'status' := openapi_delivery_appointment_status:openapi_delivery_appointment_status(),
       'supplierName' := binary(),
       'timeSlot' => binary(),
       'warehouseId' := binary()
     }.

encode(#{ 'email' := Email,
          'notes' := Notes,
          'phone' := Phone,
          'requestedDate' := RequestedDate,
          'status' := Status,
          'supplierName' := SupplierName,
          'timeSlot' := TimeSlot,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'email' => Email,
       'notes' => Notes,
       'phone' => Phone,
       'requestedDate' => RequestedDate,
       'status' => Status,
       'supplierName' => SupplierName,
       'timeSlot' => TimeSlot,
       'warehouseId' => WarehouseId
     }.
