-module(openapi_expense_item).

-export([encode/1]).

-export_type([openapi_expense_item/0]).

-type openapi_expense_item() ::
    #{ 'amount' := binary(),
       'category' := binary(),
       'percentage' := float()
     }.

encode(#{ 'amount' := Amount,
          'category' := Category,
          'percentage' := Percentage
        }) ->
    #{ 'amount' => Amount,
       'category' => Category,
       'percentage' => Percentage
     }.
