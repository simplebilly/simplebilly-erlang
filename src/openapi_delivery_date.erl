-module(openapi_delivery_date).

-export([encode/1]).

-export_type([openapi_delivery_date/0]).

-type openapi_delivery_date() ::
    #{ 'customerId' => binary(),
       'fulfilledDate' => calendar:date(),
       'note' => binary(),
       'orderNumber' := binary(),
       'originalDate' => calendar:date(),
       'productId' => binary(),
       'promisedDate' := calendar:date(),
       'status' := openapi_delivery_date_status:openapi_delivery_date_status()
     }.

encode(#{ 'customerId' := CustomerId,
          'fulfilledDate' := FulfilledDate,
          'note' := Note,
          'orderNumber' := OrderNumber,
          'originalDate' := OriginalDate,
          'productId' := ProductId,
          'promisedDate' := PromisedDate,
          'status' := Status
        }) ->
    #{ 'customerId' => CustomerId,
       'fulfilledDate' => FulfilledDate,
       'note' => Note,
       'orderNumber' => OrderNumber,
       'originalDate' => OriginalDate,
       'productId' => ProductId,
       'promisedDate' => PromisedDate,
       'status' => Status
     }.
