-module(openapi_production_order_api).

-export([create_production_order/2, create_production_order/3,
         delete_production_order/2, delete_production_order/3,
         get_production_order/2, get_production_order/3,
         list_production_orders/1, list_production_orders/2,
         production_order_costing/2, production_order_costing/3,
         update_production_order/3, update_production_order/4,
         update_production_order_status/3, update_production_order_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_production_order(ctx:ctx(), openapi_production_order:openapi_production_order()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_production_order(Ctx, OpenapiProductionOrder) ->
    create_production_order(Ctx, OpenapiProductionOrder, #{}).

-spec create_production_order(ctx:ctx(), openapi_production_order:openapi_production_order(), maps:map()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_production_order(Ctx, OpenapiProductionOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/production-orders"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductionOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_production_order(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_production_order(Ctx, ProductionOrderId) ->
    delete_production_order(Ctx, ProductionOrderId, #{}).

-spec delete_production_order(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_production_order(Ctx, ProductionOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/production-orders/", ProductionOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_production_order(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_production_order(Ctx, ProductionOrderId) ->
    get_production_order(Ctx, ProductionOrderId, #{}).

-spec get_production_order(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_production_order(Ctx, ProductionOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/production-orders/", ProductionOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_production_orders(ctx:ctx()) -> {ok, [openapi_production_order:openapi_production_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_production_orders(Ctx) ->
    list_production_orders(Ctx, #{}).

-spec list_production_orders(ctx:ctx(), maps:map()) -> {ok, [openapi_production_order:openapi_production_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_production_orders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/production-orders/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'search', 'status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product's sale price.
%% 
-spec production_order_costing(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_production_order_costing:openapi_production_order_costing(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
production_order_costing(Ctx, ProductionOrderId) ->
    production_order_costing(Ctx, ProductionOrderId, #{}).

-spec production_order_costing(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_production_order_costing:openapi_production_order_costing(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
production_order_costing(Ctx, ProductionOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/production-orders/", ProductionOrderId, "/costing"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_production_order(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_production_order:openapi_production_order()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_production_order(Ctx, ProductionOrderId, OpenapiProductionOrder) ->
    update_production_order(Ctx, ProductionOrderId, OpenapiProductionOrder, #{}).

-spec update_production_order(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_production_order:openapi_production_order(), maps:map()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_production_order(Ctx, ProductionOrderId, OpenapiProductionOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/production-orders/", ProductionOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductionOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_production_order_status(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_production_order_status_update:openapi_production_order_status_update()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_production_order_status(Ctx, ProductionOrderId, OpenapiProductionOrderStatusUpdate) ->
    update_production_order_status(Ctx, ProductionOrderId, OpenapiProductionOrderStatusUpdate, #{}).

-spec update_production_order_status(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_production_order_status_update:openapi_production_order_status_update(), maps:map()) -> {ok, openapi_production_order:openapi_production_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_production_order_status(Ctx, ProductionOrderId, OpenapiProductionOrderStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/production-orders/", ProductionOrderId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductionOrderStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


