-module(openapi_bwa_expenses).

-export([encode/1]).

-export_type([openapi_bwa_expenses/0]).

-type openapi_bwa_expenses() ::
    #{ 'expense_breakdown' := list(),
       'total_expenses' := binary()
     }.

encode(#{ 'expense_breakdown' := ExpenseBreakdown,
          'total_expenses' := TotalExpenses
        }) ->
    #{ 'expense_breakdown' => ExpenseBreakdown,
       'total_expenses' => TotalExpenses
     }.
