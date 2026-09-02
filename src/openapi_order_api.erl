-module(openapi_order_api).

-export([add_order_tags/3, add_order_tags/4,
         find_order_by_external_ref/2, find_order_by_external_ref/3,
         get_order/2, get_order/3,
         get_orders/1, get_orders/2,
         patch_order/3, patch_order/4,
         replace_order_tags/3, replace_order_tags/4,
         update_order_state/3, update_order_state/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec add_order_tags(ctx:ctx(), binary(), openapi_order_tags_request:openapi_order_tags_request()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
add_order_tags(Ctx, OrderId, OpenapiOrderTagsRequest) ->
    add_order_tags(Ctx, OrderId, OpenapiOrderTagsRequest, #{}).

-spec add_order_tags(ctx:ctx(), binary(), openapi_order_tags_request:openapi_order_tags_request(), maps:map()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
add_order_tags(Ctx, OrderId, OpenapiOrderTagsRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/orders/", OrderId, "/tags"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderTagsRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec find_order_by_external_ref(ctx:ctx(), binary()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
find_order_by_external_ref(Ctx, ExtRef) ->
    find_order_by_external_ref(Ctx, ExtRef, #{}).

-spec find_order_by_external_ref(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
find_order_by_external_ref(Ctx, ExtRef, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/orders/by-ext-ref/", ExtRef, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_order(ctx:ctx(), binary()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_order(Ctx, OrderNumber) ->
    get_order(Ctx, OrderNumber, #{}).

-spec get_order(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_order(Ctx, OrderNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/order/", OrderNumber, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_orders(ctx:ctx()) -> {ok, [openapi_order:openapi_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_orders(Ctx) ->
    get_orders(Ctx, #{}).

-spec get_orders(ctx:ctx(), maps:map()) -> {ok, [openapi_order:openapi_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_orders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/orders"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec patch_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
patch_order(Ctx, OrderId, Body) ->
    patch_order(Ctx, OrderId, Body, #{}).

-spec patch_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
patch_order(Ctx, OrderId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = patch,
    Path = [?BASE_URL, "/api/v1/orders/", OrderId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec replace_order_tags(ctx:ctx(), binary(), openapi_order_tags_request:openapi_order_tags_request()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
replace_order_tags(Ctx, OrderId, OpenapiOrderTagsRequest) ->
    replace_order_tags(Ctx, OrderId, OpenapiOrderTagsRequest, #{}).

-spec replace_order_tags(ctx:ctx(), binary(), openapi_order_tags_request:openapi_order_tags_request(), maps:map()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
replace_order_tags(Ctx, OrderId, OpenapiOrderTagsRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/orders/", OrderId, "/tags"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderTagsRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_order_state(ctx:ctx(), binary(), openapi_order_state_update:openapi_order_state_update()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_order_state(Ctx, OrderId, OpenapiOrderStateUpdate) ->
    update_order_state(Ctx, OrderId, OpenapiOrderStateUpdate, #{}).

-spec update_order_state(ctx:ctx(), binary(), openapi_order_state_update:openapi_order_state_update(), maps:map()) -> {ok, openapi_order:openapi_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_order_state(Ctx, OrderId, OpenapiOrderStateUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/orders/", OrderId, "/state"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderStateUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


