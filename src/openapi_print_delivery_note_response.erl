-module(openapi_print_delivery_note_response).

-export([encode/1]).

-export_type([openapi_print_delivery_note_response/0]).

-type openapi_print_delivery_note_response() ::
    #{ 'message' := binary(),
       'pdf_url' => binary(),
       'success' := boolean()
     }.

encode(#{ 'message' := Message,
          'pdf_url' := PdfUrl,
          'success' := Success
        }) ->
    #{ 'message' => Message,
       'pdf_url' => PdfUrl,
       'success' => Success
     }.
