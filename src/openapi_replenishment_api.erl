-module(openapi_replenishment_api).

-export([apply_replenishments/1, apply_replenishments/2,
         get_replenishments/1, get_replenishments/2]).

-define(BASE_URL, <<"">>).

%% @doc Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.
%% 
-spec apply_replenishments(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_replenishments(Ctx) ->
    apply_replenishments(Ctx, #{}).

-spec apply_replenishments(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_replenishments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/replenishments/apply"],
    QS = lists:flatten([])++openapi_utils:optional_params(['targetWarehouseId', 'sourceWarehouseId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_replenishments(ctx:ctx()) -> {ok, openapi_replenishment_response:openapi_replenishment_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_replenishments(Ctx) ->
    get_replenishments(Ctx, #{}).

-spec get_replenishments(ctx:ctx(), maps:map()) -> {ok, openapi_replenishment_response:openapi_replenishment_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_replenishments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/replenishments"],
    QS = lists:flatten([])++openapi_utils:optional_params(['targetWarehouseId', 'sourceWarehouseId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


