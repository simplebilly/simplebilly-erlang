-module(openapi_inventory_count_update).

-export([encode/1]).

-export_type([openapi_inventory_count_update/0]).

-type openapi_inventory_count_update() ::
    #{ 'countDate' => calendar:date(),
       'countNumber' => binary(),
       'lineItems' => openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'status' => openapi_inventory_count_status:openapi_inventory_count_status(),
       'warehouseId' => binary()
     }.

encode(#{ 'countDate' := CountDate,
          'countNumber' := CountNumber,
          'lineItems' := LineItems,
          'notes' := Notes,
          'status' := Status,
          'warehouseId' := WarehouseId
        }) ->
    #{ 'countDate' => CountDate,
       'countNumber' => CountNumber,
       'lineItems' => LineItems,
       'notes' => Notes,
       'status' => Status,
       'warehouseId' => WarehouseId
     }.
