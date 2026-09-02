-module(openapi_return_order_api).

-export([create_return_order/2, create_return_order/3,
         delete_return_order/2, delete_return_order/3,
         get_return_order/2, get_return_order/3,
         list_return_orders/1, list_return_orders/2,
         return_logistics_queue/1, return_logistics_queue/2,
         return_logistics_summary/1, return_logistics_summary/2,
         update_return_order/3, update_return_order/4,
         update_return_order_status/3, update_return_order_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_return_order(ctx:ctx(), openapi_return_order:openapi_return_order()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_return_order(Ctx, OpenapiReturnOrder) ->
    create_return_order(Ctx, OpenapiReturnOrder, #{}).

-spec create_return_order(ctx:ctx(), openapi_return_order:openapi_return_order(), maps:map()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_return_order(Ctx, OpenapiReturnOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/returns"],
    QS = [],
    Headers = [],
    Body1 = OpenapiReturnOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_return_order(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_return_order(Ctx, ReturnOrderId) ->
    delete_return_order(Ctx, ReturnOrderId, #{}).

-spec delete_return_order(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_return_order(Ctx, ReturnOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/returns/", ReturnOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_return_order(ctx:ctx(), binary()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_return_order(Ctx, ReturnOrderId) ->
    get_return_order(Ctx, ReturnOrderId, #{}).

-spec get_return_order(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_return_order(Ctx, ReturnOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/returns/", ReturnOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_return_orders(ctx:ctx()) -> {ok, [openapi_return_order:openapi_return_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_return_orders(Ctx) ->
    list_return_orders(Ctx, #{}).

-spec list_return_orders(ctx:ctx(), maps:map()) -> {ok, [openapi_return_order:openapi_return_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_return_orders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/returns/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'customer_name', 'order_number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec return_logistics_queue(ctx:ctx()) -> {ok, [openapi_return_logistics_queue_item:openapi_return_logistics_queue_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
return_logistics_queue(Ctx) ->
    return_logistics_queue(Ctx, #{}).

-spec return_logistics_queue(ctx:ctx(), maps:map()) -> {ok, [openapi_return_logistics_queue_item:openapi_return_logistics_queue_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
return_logistics_queue(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/returns/logistics-queue"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.
%% 
-spec return_logistics_summary(ctx:ctx()) -> {ok, openapi_return_logistics_summary:openapi_return_logistics_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
return_logistics_summary(Ctx) ->
    return_logistics_summary(Ctx, #{}).

-spec return_logistics_summary(ctx:ctx(), maps:map()) -> {ok, openapi_return_logistics_summary:openapi_return_logistics_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
return_logistics_summary(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/returns/logistics-summary"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_return_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_return_order(Ctx, ReturnOrderId, Body) ->
    update_return_order(Ctx, ReturnOrderId, Body, #{}).

-spec update_return_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_return_order(Ctx, ReturnOrderId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/returns/", ReturnOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_return_order_status(ctx:ctx(), binary(), openapi_return_order_status_update:openapi_return_order_status_update()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_return_order_status(Ctx, ReturnOrderId, OpenapiReturnOrderStatusUpdate) ->
    update_return_order_status(Ctx, ReturnOrderId, OpenapiReturnOrderStatusUpdate, #{}).

-spec update_return_order_status(ctx:ctx(), binary(), openapi_return_order_status_update:openapi_return_order_status_update(), maps:map()) -> {ok, openapi_return_order:openapi_return_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_return_order_status(Ctx, ReturnOrderId, OpenapiReturnOrderStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/returns/", ReturnOrderId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiReturnOrderStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


