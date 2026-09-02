-module(openapi_bom_update).

-export([encode/1]).

-export_type([openapi_bom_update/0]).

-type openapi_bom_update() ::
    #{ 'components' => openapi_any_type:openapi_any_type(),
       'description' => binary(),
       'name' => binary(),
       'outputQuantity' => integer(),
       'productId' => openapi_u_uid:openapi_u_uid(),
       'status' => openapi_bom_status:openapi_bom_status()
     }.

encode(#{ 'components' := Components,
          'description' := Description,
          'name' := Name,
          'outputQuantity' := OutputQuantity,
          'productId' := ProductId,
          'status' := Status
        }) ->
    #{ 'components' => Components,
       'description' => Description,
       'name' => Name,
       'outputQuantity' => OutputQuantity,
       'productId' => ProductId,
       'status' => Status
     }.
