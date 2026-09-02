-module(openapi_public_return_response).

-export([encode/1]).

-export_type([openapi_public_return_response/0]).

-type openapi_public_return_response() ::
    #{ 'createdAt' := openapi_date_time:openapi_date_time(),
       'items' := openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'orderNumber' => binary(),
       'returnNumber' := binary(),
       'returnOrderId' := binary(),
       'status' := binary(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'items' := Items,
          'notes' := Notes,
          'orderNumber' := OrderNumber,
          'returnNumber' := ReturnNumber,
          'returnOrderId' := ReturnOrderId,
          'status' := Status,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'createdAt' => CreatedAt,
       'items' => Items,
       'notes' => Notes,
       'orderNumber' => OrderNumber,
       'returnNumber' => ReturnNumber,
       'returnOrderId' => ReturnOrderId,
       'status' => Status,
       'updatedAt' => UpdatedAt
     }.
