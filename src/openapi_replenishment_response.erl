-module(openapi_replenishment_response).

-export([encode/1]).

-export_type([openapi_replenishment_response/0]).

-type openapi_replenishment_response() ::
    #{ 'generatedAt' := openapi_date_time:openapi_date_time(),
       'lines' := list(),
       'targetWarehouseId' := binary(),
       'totalSuggestedQuantity' := integer()
     }.

encode(#{ 'generatedAt' := GeneratedAt,
          'lines' := Lines,
          'targetWarehouseId' := TargetWarehouseId,
          'totalSuggestedQuantity' := TotalSuggestedQuantity
        }) ->
    #{ 'generatedAt' => GeneratedAt,
       'lines' => Lines,
       'targetWarehouseId' => TargetWarehouseId,
       'totalSuggestedQuantity' => TotalSuggestedQuantity
     }.
