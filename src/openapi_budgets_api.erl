-module(openapi_budgets_api).

-export([budgets_api/3, budgets_api/4,
         upsert_budget_goal_api/3, upsert_budget_goal_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec budgets_api(ctx:ctx(), integer(), integer()) -> {ok, openapi_budget_ergebnis:openapi_budget_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
budgets_api(Ctx, Year, Month) ->
    budgets_api(Ctx, Year, Month, #{}).

-spec budgets_api(ctx:ctx(), integer(), integer(), maps:map()) -> {ok, openapi_budget_ergebnis:openapi_budget_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
budgets_api(Ctx, Year, Month, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/budgets"],
    QS = lists:flatten([{<<"year">>, Year}, {<<"month">>, Month}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec upsert_budget_goal_api(ctx:ctx(), binary(), openapi_budget_goal_request:openapi_budget_goal_request()) -> {ok, openapi_budget:openapi_budget(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
upsert_budget_goal_api(Ctx, Category, OpenapiBudgetGoalRequest) ->
    upsert_budget_goal_api(Ctx, Category, OpenapiBudgetGoalRequest, #{}).

-spec upsert_budget_goal_api(ctx:ctx(), binary(), openapi_budget_goal_request:openapi_budget_goal_request(), maps:map()) -> {ok, openapi_budget:openapi_budget(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
upsert_budget_goal_api(Ctx, Category, OpenapiBudgetGoalRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/bookkeeping/budgets/goals/", Category, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiBudgetGoalRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


