-module(openapi_invoice_match_request).

-export([encode/1]).

-export_type([openapi_invoice_match_request/0]).

-type openapi_invoice_match_request() ::
    #{ 'supplier_invoice_id' := binary()
     }.

encode(#{ 'supplier_invoice_id' := SupplierInvoiceId
        }) ->
    #{ 'supplier_invoice_id' => SupplierInvoiceId
     }.
