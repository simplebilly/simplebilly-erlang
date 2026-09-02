-module(openapi_income_statement).

-export([encode/1]).

-export_type([openapi_income_statement/0]).

-type openapi_income_statement() ::
    #{ 'expense_items' := list(),
       'net_income' := binary(),
       'revenue_items' := list(),
       'total_expenses' := binary(),
       'total_revenue' := binary()
     }.

encode(#{ 'expense_items' := ExpenseItems,
          'net_income' := NetIncome,
          'revenue_items' := RevenueItems,
          'total_expenses' := TotalExpenses,
          'total_revenue' := TotalRevenue
        }) ->
    #{ 'expense_items' => ExpenseItems,
       'net_income' => NetIncome,
       'revenue_items' => RevenueItems,
       'total_expenses' => TotalExpenses,
       'total_revenue' => TotalRevenue
     }.
