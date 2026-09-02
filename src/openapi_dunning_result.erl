-module(openapi_dunning_result).

-export([encode/1]).

-export_type([openapi_dunning_result/0]).

-type openapi_dunning_result() ::
    #{ 'invoices_processed' := integer(),
       'message' := binary()
     }.

encode(#{ 'invoices_processed' := InvoicesProcessed,
          'message' := Message
        }) ->
    #{ 'invoices_processed' => InvoicesProcessed,
       'message' => Message
     }.
