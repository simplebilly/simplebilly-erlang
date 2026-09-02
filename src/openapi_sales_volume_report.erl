-module(openapi_sales_volume_report).

-export([encode/1]).

-export_type([openapi_sales_volume_report/0]).

-type openapi_sales_volume_report() ::
    #{ 'grand_total' := binary(),
       'items' := list(),
       'total_count' := integer()
     }.

encode(#{ 'grand_total' := GrandTotal,
          'items' := Items,
          'total_count' := TotalCount
        }) ->
    #{ 'grand_total' => GrandTotal,
       'items' => Items,
       'total_count' => TotalCount
     }.
