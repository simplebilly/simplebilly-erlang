-module(openapi_print_label_response).

-export([encode/1]).

-export_type([openapi_print_label_response/0]).

-type openapi_print_label_response() ::
    #{ 'label_url' => binary(),
       'message' := binary(),
       'sscc' => binary(),
       'success' := boolean(),
       'tracking_number' => binary()
     }.

encode(#{ 'label_url' := LabelUrl,
          'message' := Message,
          'sscc' := Sscc,
          'success' := Success,
          'tracking_number' := TrackingNumber
        }) ->
    #{ 'label_url' => LabelUrl,
       'message' => Message,
       'sscc' => Sscc,
       'success' => Success,
       'tracking_number' => TrackingNumber
     }.
