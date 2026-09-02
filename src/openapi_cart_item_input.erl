-module(openapi_cart_item_input).

-export([encode/1]).

-export_type([openapi_cart_item_input/0]).

-type openapi_cart_item_input() ::
    #{ 'product_id' := openapi_u_uid:openapi_u_uid(),
       'quantity' := integer()
     }.

encode(#{ 'product_id' := ProductId,
          'quantity' := Quantity
        }) ->
    #{ 'product_id' => ProductId,
       'quantity' => Quantity
     }.
