-module(openapi_gu_v_report).

-export([encode/1]).

-export_type([openapi_gu_v_report/0]).

-type openapi_gu_v_report() ::
    #{ 'expenses' := list(),
       'generated_at' := binary(),
       'net_income' := binary(),
       'period' := binary(),
       'revenue' := list(),
       'total_expenses' := binary(),
       'total_revenue' := binary()
     }.

encode(#{ 'expenses' := Expenses,
          'generated_at' := GeneratedAt,
          'net_income' := NetIncome,
          'period' := Period,
          'revenue' := Revenue,
          'total_expenses' := TotalExpenses,
          'total_revenue' := TotalRevenue
        }) ->
    #{ 'expenses' => Expenses,
       'generated_at' => GeneratedAt,
       'net_income' => NetIncome,
       'period' => Period,
       'revenue' => Revenue,
       'total_expenses' => TotalExpenses,
       'total_revenue' => TotalRevenue
     }.
