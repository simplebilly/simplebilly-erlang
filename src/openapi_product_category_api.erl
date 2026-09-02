-module(openapi_product_category_api).

-export([create_product_category/2, create_product_category/3,
         delete_product_category/2, delete_product_category/3,
         get_product_category/2, get_product_category/3,
         list_product_categories/1, list_product_categories/2,
         update_product_category/3, update_product_category/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_product_category(ctx:ctx(), openapi_product_category:openapi_product_category()) -> {ok, openapi_product_category:openapi_product_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_category(Ctx, OpenapiProductCategory) ->
    create_product_category(Ctx, OpenapiProductCategory, #{}).

-spec create_product_category(ctx:ctx(), openapi_product_category:openapi_product_category(), maps:map()) -> {ok, openapi_product_category:openapi_product_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_category(Ctx, OpenapiProductCategory, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/product-categories"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductCategory,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_product_category(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_category(Ctx, CategoryId) ->
    delete_product_category(Ctx, CategoryId, #{}).

-spec delete_product_category(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_category(Ctx, CategoryId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/product-categories/", CategoryId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_product_category(ctx:ctx(), binary()) -> {ok, openapi_product_category:openapi_product_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_category(Ctx, CategoryId) ->
    get_product_category(Ctx, CategoryId, #{}).

-spec get_product_category(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_product_category:openapi_product_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_category(Ctx, CategoryId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/product-categories/", CategoryId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_product_categories(ctx:ctx()) -> {ok, [openapi_product_category:openapi_product_category()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_product_categories(Ctx) ->
    list_product_categories(Ctx, #{}).

-spec list_product_categories(ctx:ctx(), maps:map()) -> {ok, [openapi_product_category:openapi_product_category()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_product_categories(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/product-categories"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_product_category(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_product_category:openapi_product_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_category(Ctx, CategoryId, Body) ->
    update_product_category(Ctx, CategoryId, Body, #{}).

-spec update_product_category(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_product_category:openapi_product_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_category(Ctx, CategoryId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/product-categories/", CategoryId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


