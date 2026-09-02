-module(openapi_public_delivery_appointment_response).

-export([encode/1]).

-export_type([openapi_public_delivery_appointment_response/0]).

-type openapi_public_delivery_appointment_response() ::
    #{ 'appointmentId' := binary(),
       'confirmationHint' := binary(),
       'message' := binary(),
       'status' := binary()
     }.

encode(#{ 'appointmentId' := AppointmentId,
          'confirmationHint' := ConfirmationHint,
          'message' := Message,
          'status' := Status
        }) ->
    #{ 'appointmentId' => AppointmentId,
       'confirmationHint' => ConfirmationHint,
       'message' => Message,
       'status' => Status
     }.
