-module(openapi_delivery_date_create).

-export([encode/1]).

-export_type([openapi_delivery_date_create/0]).

-type openapi_delivery_date_create() ::
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
