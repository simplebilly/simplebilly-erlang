-module(openapi_budget).

-export([encode/1]).

-export_type([openapi_budget/0]).

-type openapi_budget() ::
    #{ 'category' := binary(),
       'monthlyGoal' := binary(),
       'updatedAt' => openapi_date_time:openapi_date_time(),
       'year' := integer()
     }.

encode(#{ 'category' := Category,
          'monthlyGoal' := MonthlyGoal,
          'updatedAt' := UpdatedAt,
          'year' := Year
        }) ->
    #{ 'category' => Category,
       'monthlyGoal' => MonthlyGoal,
       'updatedAt' => UpdatedAt,
       'year' => Year
     }.
