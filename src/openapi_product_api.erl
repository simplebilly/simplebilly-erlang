-module(openapi_product_api).

-export([create_product_api/2, create_product_api/3,
         delete_product_api/2, delete_product_api/3,
         get_product_api/2, get_product_api/3,
         get_product_stock_api/2, get_product_stock_api/3,
         get_products_api/1, get_products_api/2,
         list_low_stock_products_api/1, list_low_stock_products_api/2,
         product_restore/2, product_restore/3,
         update_product_api/3, update_product_api/4,
         update_product_stock_api/3, update_product_stock_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_product_api(ctx:ctx(), openapi_product_create:openapi_product_create()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_api(Ctx, OpenapiProductCreate) ->
    create_product_api(Ctx, OpenapiProductCreate, #{}).

-spec create_product_api(ctx:ctx(), openapi_product_create:openapi_product_create(), maps:map()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_api(Ctx, OpenapiProductCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/products"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_product_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_api(Ctx, ProductId) ->
    delete_product_api(Ctx, ProductId, #{}).

-spec delete_product_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_api(Ctx, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/products/", ProductId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_product_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_api(Ctx, ProductId) ->
    get_product_api(Ctx, ProductId, #{}).

-spec get_product_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_api(Ctx, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/products/", ProductId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_product_stock_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_product_stock:openapi_product_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_stock_api(Ctx, ProductId) ->
    get_product_stock_api(Ctx, ProductId, #{}).

-spec get_product_stock_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_product_stock:openapi_product_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_stock_api(Ctx, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/products/", ProductId, "/stock"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_products_api(ctx:ctx()) -> {ok, [openapi_product:openapi_product()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_products_api(Ctx) ->
    get_products_api(Ctx, #{}).

-spec get_products_api(ctx:ctx(), maps:map()) -> {ok, [openapi_product:openapi_product()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_products_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/products/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_low_stock_products_api(ctx:ctx()) -> {ok, [openapi_product_stock:openapi_product_stock()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_low_stock_products_api(Ctx) ->
    list_low_stock_products_api(Ctx, #{}).

-spec list_low_stock_products_api(ctx:ctx(), maps:map()) -> {ok, [openapi_product_stock:openapi_product_stock()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_low_stock_products_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/products/low-stock"],
    QS = lists:flatten([])++openapi_utils:optional_params(['threshold'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec product_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
product_restore(Ctx, ProductId) ->
    product_restore(Ctx, ProductId, #{}).

-spec product_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
product_restore(Ctx, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/products/", ProductId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_product_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_product_update:openapi_product_update()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_api(Ctx, ProductId, OpenapiProductUpdate) ->
    update_product_api(Ctx, ProductId, OpenapiProductUpdate, #{}).

-spec update_product_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_product_update:openapi_product_update(), maps:map()) -> {ok, openapi_product:openapi_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_api(Ctx, ProductId, OpenapiProductUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/products/", ProductId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_product_stock_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_stock_update_request:openapi_stock_update_request()) -> {ok, openapi_product_stock:openapi_product_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_stock_api(Ctx, ProductId, OpenapiStockUpdateRequest) ->
    update_product_stock_api(Ctx, ProductId, OpenapiStockUpdateRequest, #{}).

-spec update_product_stock_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_stock_update_request:openapi_stock_update_request(), maps:map()) -> {ok, openapi_product_stock:openapi_product_stock(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_stock_api(Ctx, ProductId, OpenapiStockUpdateRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/products/", ProductId, "/stock"],
    QS = [],
    Headers = [],
    Body1 = OpenapiStockUpdateRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


