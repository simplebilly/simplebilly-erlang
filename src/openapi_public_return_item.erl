-module(openapi_public_return_item).

-export([encode/1]).

-export_type([openapi_public_return_item/0]).

-type openapi_public_return_item() ::
    #{ 'name' => binary(),
       'productId' := binary(),
       'quantity' := integer(),
       'reason' => binary()
     }.

encode(#{ 'name' := Name,
          'productId' := ProductId,
          'quantity' := Quantity,
          'reason' := Reason
        }) ->
    #{ 'name' => Name,
       'productId' => ProductId,
       'quantity' => Quantity,
       'reason' => Reason
     }.
