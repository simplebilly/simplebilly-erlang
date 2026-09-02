-module(openapi_budget_goal_request).

-export([encode/1]).

-export_type([openapi_budget_goal_request/0]).

-type openapi_budget_goal_request() ::
    #{ 'monthly_goal' := binary(),
       'year' := integer()
     }.

encode(#{ 'monthly_goal' := MonthlyGoal,
          'year' := Year
        }) ->
    #{ 'monthly_goal' => MonthlyGoal,
       'year' => Year
     }.
