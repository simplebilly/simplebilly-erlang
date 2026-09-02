-module(openapi_warehouse_stock_api).

-export([create_warehouse_stock/3, create_warehouse_stock/4,
         delete_warehouse_stock/3, delete_warehouse_stock/4,
         list_warehouse_stock/2, list_warehouse_stock/3,
         update_warehouse_stock/4, update_warehouse_stock/5]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_warehouse_stock(ctx:ctx(), binary(), openapi_stock_adjustment:openapi_stock_adjustment()) -> {ok, openapi_warehouse_stock:openapi_warehouse_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_warehouse_stock(Ctx, WarehouseId, OpenapiStockAdjustment) ->
    create_warehouse_stock(Ctx, WarehouseId, OpenapiStockAdjustment, #{}).

-spec create_warehouse_stock(ctx:ctx(), binary(), openapi_stock_adjustment:openapi_stock_adjustment(), maps:map()) -> {ok, openapi_warehouse_stock:openapi_warehouse_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_warehouse_stock(Ctx, WarehouseId, OpenapiStockAdjustment, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, "/stock"],
    QS = [],
    Headers = [],
    Body1 = OpenapiStockAdjustment,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_warehouse_stock(ctx:ctx(), binary(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_warehouse_stock(Ctx, WarehouseId, ProductId) ->
    delete_warehouse_stock(Ctx, WarehouseId, ProductId, #{}).

-spec delete_warehouse_stock(ctx:ctx(), binary(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_warehouse_stock(Ctx, WarehouseId, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, "/stock/", ProductId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_warehouse_stock(ctx:ctx(), binary()) -> {ok, [openapi_warehouse_stock:openapi_warehouse_stock()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_warehouse_stock(Ctx, WarehouseId) ->
    list_warehouse_stock(Ctx, WarehouseId, #{}).

-spec list_warehouse_stock(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_warehouse_stock:openapi_warehouse_stock()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_warehouse_stock(Ctx, WarehouseId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, "/stock"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_warehouse_stock(ctx:ctx(), binary(), openapi_u_uid:openapi_u_uid(), openapi_stock_adjustment:openapi_stock_adjustment()) -> {ok, openapi_warehouse_stock:openapi_warehouse_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_warehouse_stock(Ctx, WarehouseId, ProductId, OpenapiStockAdjustment) ->
    update_warehouse_stock(Ctx, WarehouseId, ProductId, OpenapiStockAdjustment, #{}).

-spec update_warehouse_stock(ctx:ctx(), binary(), openapi_u_uid:openapi_u_uid(), openapi_stock_adjustment:openapi_stock_adjustment(), maps:map()) -> {ok, openapi_warehouse_stock:openapi_warehouse_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_warehouse_stock(Ctx, WarehouseId, ProductId, OpenapiStockAdjustment, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, "/stock/", ProductId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiStockAdjustment,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


