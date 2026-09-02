-module(openapi_datev_export_response).

-export([encode/1]).

-export_type([openapi_datev_export_response/0]).

-type openapi_datev_export_response() ::
    #{ 'booking_count' := integer(),
       'csv_content' := binary(),
       'filename' := binary()
     }.

encode(#{ 'booking_count' := BookingCount,
          'csv_content' := CsvContent,
          'filename' := Filename
        }) ->
    #{ 'booking_count' => BookingCount,
       'csv_content' => CsvContent,
       'filename' => Filename
     }.
