-module(openapi_time_entries_api).

-export([clock_in_time_entry/2, clock_in_time_entry/3,
         clock_out_time_entry/3, clock_out_time_entry/4,
         get_labor_costs/4, get_labor_costs/5,
         list_time_entries/1, list_time_entries/2]).

-define(BASE_URL, <<"">>).

%% @doc Clock in for the authenticated user (resolved via their employee profile).
%% 
-spec clock_in_time_entry(ctx:ctx(), openapi_time_entry_clock_in:openapi_time_entry_clock_in()) -> {ok, openapi_time_entry_dto:openapi_time_entry_dto(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
clock_in_time_entry(Ctx, OpenapiTimeEntryClockIn) ->
    clock_in_time_entry(Ctx, OpenapiTimeEntryClockIn, #{}).

-spec clock_in_time_entry(ctx:ctx(), openapi_time_entry_clock_in:openapi_time_entry_clock_in(), maps:map()) -> {ok, openapi_time_entry_dto:openapi_time_entry_dto(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
clock_in_time_entry(Ctx, OpenapiTimeEntryClockIn, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/time-entries"],
    QS = [],
    Headers = [],
    Body1 = OpenapiTimeEntryClockIn,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Clock out an entry: the entry's owner, or anyone with `time_entries:write`.
%% 
-spec clock_out_time_entry(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_time_entry_clock_out:openapi_time_entry_clock_out()) -> {ok, openapi_time_entry_dto:openapi_time_entry_dto(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
clock_out_time_entry(Ctx, Id, OpenapiTimeEntryClockOut) ->
    clock_out_time_entry(Ctx, Id, OpenapiTimeEntryClockOut, #{}).

-spec clock_out_time_entry(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_time_entry_clock_out:openapi_time_entry_clock_out(), maps:map()) -> {ok, openapi_time_entry_dto:openapi_time_entry_dto(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
clock_out_time_entry(Ctx, Id, OpenapiTimeEntryClockOut, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = patch,
    Path = [?BASE_URL, "/api/v1/time-entries/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiTimeEntryClockOut,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee's hourly cost rate.
%% 
-spec get_labor_costs(ctx:ctx(), calendar:date(), calendar:date(), binary()) -> {ok, [openapi_labor_cost_row:openapi_labor_cost_row()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_labor_costs(Ctx, From, To, GroupBy) ->
    get_labor_costs(Ctx, From, To, GroupBy, #{}).

-spec get_labor_costs(ctx:ctx(), calendar:date(), calendar:date(), binary(), maps:map()) -> {ok, [openapi_labor_cost_row:openapi_labor_cost_row()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_labor_costs(Ctx, From, To, GroupBy, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/labor-costs"],
    QS = lists:flatten([{<<"from">>, From}, {<<"to">>, To}, {<<"group_by">>, GroupBy}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List time entries with optional date-range / active / employee filters.
%% 
-spec list_time_entries(ctx:ctx()) -> {ok, [openapi_time_entry_dto:openapi_time_entry_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_time_entries(Ctx) ->
    list_time_entries(Ctx, #{}).

-spec list_time_entries(ctx:ctx(), maps:map()) -> {ok, [openapi_time_entry_dto:openapi_time_entry_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_time_entries(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/time-entries"],
    QS = lists:flatten([])++openapi_utils:optional_params(['from', 'to', 'active', 'employee_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


