-module(openapi_bwa_revenue).

-export([encode/1]).

-export_type([openapi_bwa_revenue/0]).

-type openapi_bwa_revenue() ::
    #{ 'revenue_breakdown' := list(),
       'total_revenue' := binary()
     }.

encode(#{ 'revenue_breakdown' := RevenueBreakdown,
          'total_revenue' := TotalRevenue
        }) ->
    #{ 'revenue_breakdown' => RevenueBreakdown,
       'total_revenue' => TotalRevenue
     }.
