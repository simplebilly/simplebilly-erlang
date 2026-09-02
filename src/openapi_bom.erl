-module(openapi_bom).

-export([encode/1]).

-export_type([openapi_bom/0]).

-type openapi_bom() ::
    #{ 'components' => openapi_any_type:openapi_any_type(),
       'description' => binary(),
       'name' := binary(),
       'outputQuantity' => integer(),
       'productId' := openapi_u_uid:openapi_u_uid(),
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
