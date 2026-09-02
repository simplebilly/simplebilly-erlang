-module(openapi_warehouse_api).

-export([create_warehouse/2, create_warehouse/3,
         delete_warehouse/2, delete_warehouse/3,
         get_warehouse/2, get_warehouse/3,
         list_warehouses/1, list_warehouses/2,
         update_warehouse/3, update_warehouse/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_warehouse(ctx:ctx(), openapi_warehouse:openapi_warehouse()) -> {ok, openapi_warehouse:openapi_warehouse(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_warehouse(Ctx, OpenapiWarehouse) ->
    create_warehouse(Ctx, OpenapiWarehouse, #{}).

-spec create_warehouse(ctx:ctx(), openapi_warehouse:openapi_warehouse(), maps:map()) -> {ok, openapi_warehouse:openapi_warehouse(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_warehouse(Ctx, OpenapiWarehouse, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/warehouses"],
    QS = [],
    Headers = [],
    Body1 = OpenapiWarehouse,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_warehouse(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_warehouse(Ctx, WarehouseId) ->
    delete_warehouse(Ctx, WarehouseId, #{}).

-spec delete_warehouse(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_warehouse(Ctx, WarehouseId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_warehouse(ctx:ctx(), binary()) -> {ok, openapi_warehouse:openapi_warehouse(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_warehouse(Ctx, WarehouseId) ->
    get_warehouse(Ctx, WarehouseId, #{}).

-spec get_warehouse(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_warehouse:openapi_warehouse(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_warehouse(Ctx, WarehouseId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_warehouses(ctx:ctx()) -> {ok, [openapi_warehouse:openapi_warehouse()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_warehouses(Ctx) ->
    list_warehouses(Ctx, #{}).

-spec list_warehouses(ctx:ctx(), maps:map()) -> {ok, [openapi_warehouse:openapi_warehouse()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_warehouses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/warehouses/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'is_active'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_warehouse(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_warehouse:openapi_warehouse(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_warehouse(Ctx, WarehouseId, Body) ->
    update_warehouse(Ctx, WarehouseId, Body, #{}).

-spec update_warehouse(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_warehouse:openapi_warehouse(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_warehouse(Ctx, WarehouseId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/warehouses/", WarehouseId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


