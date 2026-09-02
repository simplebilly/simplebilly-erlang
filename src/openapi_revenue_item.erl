-module(openapi_revenue_item).

-export([encode/1]).

-export_type([openapi_revenue_item/0]).

-type openapi_revenue_item() ::
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
