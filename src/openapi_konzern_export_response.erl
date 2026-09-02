-module(openapi_konzern_export_response).

-export([encode/1]).

-export_type([openapi_konzern_export_response/0]).

-type openapi_konzern_export_response() ::
    #{ 'csv_content' := binary(),
       'filename' := binary()
     }.

encode(#{ 'csv_content' := CsvContent,
          'filename' := Filename
        }) ->
    #{ 'csv_content' => CsvContent,
       'filename' => Filename
     }.
