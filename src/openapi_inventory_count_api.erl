-module(openapi_inventory_count_api).

-export([create_inventory_count/2, create_inventory_count/3,
         delete_inventory_count/2, delete_inventory_count/3,
         generate_inventory_count/2, generate_inventory_count/3,
         get_inventory_count/2, get_inventory_count/3,
         list_inventory_counts/1, list_inventory_counts/2,
         update_inventory_count/3, update_inventory_count/4,
         update_inventory_count_status/3, update_inventory_count_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_inventory_count(ctx:ctx(), openapi_inventory_count:openapi_inventory_count()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_inventory_count(Ctx, OpenapiInventoryCount) ->
    create_inventory_count(Ctx, OpenapiInventoryCount, #{}).

-spec create_inventory_count(ctx:ctx(), openapi_inventory_count:openapi_inventory_count(), maps:map()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_inventory_count(Ctx, OpenapiInventoryCount, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/inventory-counts"],
    QS = [],
    Headers = [],
    Body1 = OpenapiInventoryCount,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_inventory_count(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_inventory_count(Ctx, InventoryCountId) ->
    delete_inventory_count(Ctx, InventoryCountId, #{}).

-spec delete_inventory_count(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_inventory_count(Ctx, InventoryCountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/inventory-counts/", InventoryCountId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec generate_inventory_count(ctx:ctx(), openapi_generate_count_request:openapi_generate_count_request()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_inventory_count(Ctx, OpenapiGenerateCountRequest) ->
    generate_inventory_count(Ctx, OpenapiGenerateCountRequest, #{}).

-spec generate_inventory_count(ctx:ctx(), openapi_generate_count_request:openapi_generate_count_request(), maps:map()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_inventory_count(Ctx, OpenapiGenerateCountRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/inventory-counts/generate"],
    QS = [],
    Headers = [],
    Body1 = OpenapiGenerateCountRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_inventory_count(ctx:ctx(), binary()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_inventory_count(Ctx, InventoryCountId) ->
    get_inventory_count(Ctx, InventoryCountId, #{}).

-spec get_inventory_count(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_inventory_count(Ctx, InventoryCountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/inventory-counts/", InventoryCountId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_inventory_counts(ctx:ctx()) -> {ok, [openapi_inventory_count:openapi_inventory_count()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_inventory_counts(Ctx) ->
    list_inventory_counts(Ctx, #{}).

-spec list_inventory_counts(ctx:ctx(), maps:map()) -> {ok, [openapi_inventory_count:openapi_inventory_count()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_inventory_counts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/inventory-counts/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'warehouse_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_inventory_count(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_inventory_count(Ctx, InventoryCountId, Body) ->
    update_inventory_count(Ctx, InventoryCountId, Body, #{}).

-spec update_inventory_count(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_inventory_count(Ctx, InventoryCountId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/inventory-counts/", InventoryCountId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_inventory_count_status(ctx:ctx(), binary(), openapi_inventory_count_status_update:openapi_inventory_count_status_update()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_inventory_count_status(Ctx, InventoryCountId, OpenapiInventoryCountStatusUpdate) ->
    update_inventory_count_status(Ctx, InventoryCountId, OpenapiInventoryCountStatusUpdate, #{}).

-spec update_inventory_count_status(ctx:ctx(), binary(), openapi_inventory_count_status_update:openapi_inventory_count_status_update(), maps:map()) -> {ok, openapi_inventory_count:openapi_inventory_count(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_inventory_count_status(Ctx, InventoryCountId, OpenapiInventoryCountStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/inventory-counts/", InventoryCountId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiInventoryCountStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


