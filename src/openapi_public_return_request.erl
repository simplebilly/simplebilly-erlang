-module(openapi_public_return_request).

-export([encode/1]).

-export_type([openapi_public_return_request/0]).

-type openapi_public_return_request() ::
    #{ 'email' := binary(),
       'items' := list(),
       'notes' => binary(),
       'orderNumber' := binary()
     }.

encode(#{ 'email' := Email,
          'items' := Items,
          'notes' := Notes,
          'orderNumber' := OrderNumber
        }) ->
    #{ 'email' => Email,
       'items' => Items,
       'notes' => Notes,
       'orderNumber' => OrderNumber
     }.
