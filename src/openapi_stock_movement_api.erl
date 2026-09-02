-module(openapi_stock_movement_api).

-export([get_stock_movement/2, get_stock_movement/3,
         list_stock_movements/1, list_stock_movements/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_stock_movement(ctx:ctx(), binary()) -> {ok, openapi_stock_movement:openapi_stock_movement(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_stock_movement(Ctx, MovementId) ->
    get_stock_movement(Ctx, MovementId, #{}).

-spec get_stock_movement(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_stock_movement:openapi_stock_movement(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_stock_movement(Ctx, MovementId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/stock-movements/", MovementId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_stock_movements(ctx:ctx()) -> {ok, [openapi_stock_movement:openapi_stock_movement()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_stock_movements(Ctx) ->
    list_stock_movements(Ctx, #{}).

-spec list_stock_movements(ctx:ctx(), maps:map()) -> {ok, [openapi_stock_movement:openapi_stock_movement()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_stock_movements(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/stock-movements/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'productId', 'warehouseId', 'movementType', 'from', 'to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


