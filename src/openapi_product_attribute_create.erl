-module(openapi_product_attribute_create).

-export([encode/1]).

-export_type([openapi_product_attribute_create/0]).

-type openapi_product_attribute_create() ::
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
