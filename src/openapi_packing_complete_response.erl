-module(openapi_packing_complete_response).

-export([encode/1]).

-export_type([openapi_packing_complete_response/0]).

-type openapi_packing_complete_response() ::
    #{ 'message' := binary(),
       'new_state' := binary(),
       'order_number' := binary(),
       'success' := boolean()
     }.

encode(#{ 'message' := Message,
          'new_state' := NewState,
          'order_number' := OrderNumber,
          'success' := Success
        }) ->
    #{ 'message' => Message,
       'new_state' => NewState,
       'order_number' => OrderNumber,
       'success' => Success
     }.
