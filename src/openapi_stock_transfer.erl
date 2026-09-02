-module(openapi_stock_transfer).

-export([encode/1]).

-export_type([openapi_stock_transfer/0]).

-type openapi_stock_transfer() ::
    #{ 'lineItems' := openapi_any_type:openapi_any_type(),
       'notes' => binary(),
       'sourceWarehouseId' := binary(),
       'status' := openapi_stock_transfer_status:openapi_stock_transfer_status(),
       'targetWarehouseId' := binary(),
       'transferDate' := calendar:date(),
       'transferNumber' := binary()
     }.

encode(#{ 'lineItems' := LineItems,
          'notes' := Notes,
          'sourceWarehouseId' := SourceWarehouseId,
          'status' := Status,
          'targetWarehouseId' := TargetWarehouseId,
          'transferDate' := TransferDate,
          'transferNumber' := TransferNumber
        }) ->
    #{ 'lineItems' => LineItems,
       'notes' => Notes,
       'sourceWarehouseId' => SourceWarehouseId,
       'status' => Status,
       'targetWarehouseId' => TargetWarehouseId,
       'transferDate' => TransferDate,
       'transferNumber' => TransferNumber
     }.
