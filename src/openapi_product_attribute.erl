-module(openapi_product_attribute).

-export([encode/1]).

-export_type([openapi_product_attribute/0]).

-type openapi_product_attribute() ::
    #{ 'isFilterable' => boolean(),
       'name' := binary(),
       'position' => integer(),
       'productId' := openapi_u_uid:openapi_u_uid(),
       'unit' => binary(),
       'value' := binary()
     }.

encode(#{ 'isFilterable' := IsFilterable,
          'name' := Name,
          'position' := Position,
          'productId' := ProductId,
          'unit' := Unit,
          'value' := Value
        }) ->
    #{ 'isFilterable' => IsFilterable,
       'name' => Name,
       'position' => Position,
       'productId' => ProductId,
       'unit' => Unit,
       'value' => Value
     }.
