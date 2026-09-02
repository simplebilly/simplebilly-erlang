-module(openapi_order_state_update).

-export([encode/1]).

-export_type([openapi_order_state_update/0]).

-type openapi_order_state_update() ::
    #{ 'send_state_to_shop' => boolean(),
       'state' := binary()
     }.

encode(#{ 'send_state_to_shop' := SendStateToShop,
          'state' := State
        }) ->
    #{ 'send_state_to_shop' => SendStateToShop,
       'state' => State
     }.
