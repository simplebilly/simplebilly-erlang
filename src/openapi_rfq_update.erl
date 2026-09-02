-module(openapi_rfq_update).

-export([encode/1]).

-export_type([openapi_rfq_update/0]).

-type openapi_rfq_update() ::
    #{ 'currency' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'requestedDate' => calendar:date(),
       'responseDate' => calendar:date(),
       'rfqNumber' => binary(),
       'status' => openapi_rfq_status:openapi_rfq_status(),
       'supplierContactId' => binary(),
       'supplierName' => binary()
     }.

encode(#{ 'currency' := Currency,
          'lineItems' := LineItems,
          'notes' := Notes,
          'requestedDate' := RequestedDate,
          'responseDate' := ResponseDate,
          'rfqNumber' := RfqNumber,
          'status' := Status,
          'supplierContactId' := SupplierContactId,
          'supplierName' := SupplierName
        }) ->
    #{ 'currency' => Currency,
       'lineItems' => LineItems,
       'notes' => Notes,
       'requestedDate' => RequestedDate,
       'responseDate' => ResponseDate,
       'rfqNumber' => RfqNumber,
       'status' => Status,
       'supplierContactId' => SupplierContactId,
       'supplierName' => SupplierName
     }.
