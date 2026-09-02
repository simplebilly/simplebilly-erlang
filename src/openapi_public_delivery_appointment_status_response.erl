-module(openapi_public_delivery_appointment_status_response).

-export([encode/1]).

-export_type([openapi_public_delivery_appointment_status_response/0]).

-type openapi_public_delivery_appointment_status_response() ::
    #{ 'appointmentId' := binary(),
       'requestedDate' := calendar:date(),
       'status' := binary(),
       'timeSlot' => binary(),
       'warehouseName' := binary()
     }.

encode(#{ 'appointmentId' := AppointmentId,
          'requestedDate' := RequestedDate,
          'status' := Status,
          'timeSlot' := TimeSlot,
          'warehouseName' := WarehouseName
        }) ->
    #{ 'appointmentId' => AppointmentId,
       'requestedDate' => RequestedDate,
       'status' => Status,
       'timeSlot' => TimeSlot,
       'warehouseName' => WarehouseName
     }.
