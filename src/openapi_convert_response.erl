-module(openapi_convert_response).

-export([encode/1]).

-export_type([openapi_convert_response/0]).

-type openapi_convert_response() ::
    #{ 'invoiceId' := binary(),
       'invoiceNumber' := binary(),
       'proformaId' := binary(),
       'proformaNumber' := binary()
     }.

encode(#{ 'invoiceId' := InvoiceId,
          'invoiceNumber' := InvoiceNumber,
          'proformaId' := ProformaId,
          'proformaNumber' := ProformaNumber
        }) ->
    #{ 'invoiceId' => InvoiceId,
       'invoiceNumber' => InvoiceNumber,
       'proformaId' => ProformaId,
       'proformaNumber' => ProformaNumber
     }.
