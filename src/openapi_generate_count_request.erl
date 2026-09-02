-module(openapi_generate_count_request).

-export([encode/1]).

-export_type([openapi_generate_count_request/0]).

-type openapi_generate_count_request() ::
    #{ 'notes' => binary(),
       'productIds' => list(),
       'warehouseId' := binary()
     }.

encode(#{ 'notes' := Notes,
          'productIds' := ProductIds,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'notes' => Notes,
       'productIds' => ProductIds,
       'warehouseId' => WarehouseId
     }.
