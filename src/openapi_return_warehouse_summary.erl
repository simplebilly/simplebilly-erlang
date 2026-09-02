-module(openapi_return_warehouse_summary).

-export([encode/1]).

-export_type([openapi_return_warehouse_summary/0]).

-type openapi_return_warehouse_summary() ::
    #{ 'itemsRestocked' := integer(),
       'itemsScrapped' := integer(),
       'returns' := integer(),
       'warehouseId' => binary()
     }.

encode(#{ 'itemsRestocked' := ItemsRestocked,
          'itemsScrapped' := ItemsScrapped,
          'returns' := Returns,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'itemsRestocked' => ItemsRestocked,
       'itemsScrapped' => ItemsScrapped,
       'returns' => Returns,
       'warehouseId' => WarehouseId
     }.
