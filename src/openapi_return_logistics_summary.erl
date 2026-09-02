-module(openapi_return_logistics_summary).

-export([encode/1]).

-export_type([openapi_return_logistics_summary/0]).

-type openapi_return_logistics_summary() ::
    #{ 'byStatus' := openapi_any_type:openapi_any_type(),
       'byWarehouse' := list(),
       'itemsRestocked' := integer(),
       'itemsScrapped' := integer(),
       'totalItems' := integer(),
       'totalReturns' := integer()
     }.

encode(#{ 'byStatus' := ByStatus,
          'byWarehouse' := ByWarehouse,
          'itemsRestocked' := ItemsRestocked,
          'itemsScrapped' := ItemsScrapped,
          'totalItems' := TotalItems,
          'totalReturns' := TotalReturns
        }) ->
    #{ 'byStatus' => ByStatus,
       'byWarehouse' => ByWarehouse,
       'itemsRestocked' => ItemsRestocked,
       'itemsScrapped' => ItemsScrapped,
       'totalItems' => TotalItems,
       'totalReturns' => TotalReturns
     }.
