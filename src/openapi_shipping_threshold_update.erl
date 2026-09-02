-module(openapi_shipping_threshold_update).

-export([encode/1]).

-export_type([openapi_shipping_threshold_update/0]).

-type openapi_shipping_threshold_update() ::
    #{ 'isActive' => boolean(),
       'maxSellable' => integer(),
       'name' => binary(),
       'notes' => binary(),
       'productId' => openapi_u_uid:openapi_u_uid(),
       'reserveStock' => integer(),
       'warehouseId' => binary()
     }.

encode(#{ 'isActive' := IsActive,
          'maxSellable' := MaxSellable,
          'name' := Name,
          'notes' := Notes,
          'productId' := ProductId,
          'reserveStock' := ReserveStock,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'isActive' => IsActive,
       'maxSellable' => MaxSellable,
       'name' => Name,
       'notes' => Notes,
       'productId' => ProductId,
       'reserveStock' => ReserveStock,
       'warehouseId' => WarehouseId
     }.
