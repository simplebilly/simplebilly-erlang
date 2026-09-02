-module(openapi_delivery_date_api).

-export([create_delivery_date/2, create_delivery_date/3,
         delete_delivery_date/2, delete_delivery_date/3,
         get_delivery_date/2, get_delivery_date/3,
         get_delivery_performance/1, get_delivery_performance/2,
         list_delivery_dates/1, list_delivery_dates/2,
         update_delivery_date/3, update_delivery_date/4,
         update_delivery_date_status/3, update_delivery_date_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_delivery_date(ctx:ctx(), openapi_delivery_date_create:openapi_delivery_date_create()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_delivery_date(Ctx, OpenapiDeliveryDateCreate) ->
    create_delivery_date(Ctx, OpenapiDeliveryDateCreate, #{}).

-spec create_delivery_date(ctx:ctx(), openapi_delivery_date_create:openapi_delivery_date_create(), maps:map()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_delivery_date(Ctx, OpenapiDeliveryDateCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/delivery-dates"],
    QS = [],
    Headers = [],
    Body1 = OpenapiDeliveryDateCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_delivery_date(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_delivery_date(Ctx, DeliveryDateId) ->
    delete_delivery_date(Ctx, DeliveryDateId, #{}).

-spec delete_delivery_date(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_delivery_date(Ctx, DeliveryDateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/delivery-dates/", DeliveryDateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_delivery_date(ctx:ctx(), binary()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_date(Ctx, DeliveryDateId) ->
    get_delivery_date(Ctx, DeliveryDateId, #{}).

-spec get_delivery_date(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_date(Ctx, DeliveryDateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-dates/", DeliveryDateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc On-time performance summary: how many promised delivery dates were met within a period.
%% 
-spec get_delivery_performance(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_performance(Ctx) ->
    get_delivery_performance(Ctx, #{}).

-spec get_delivery_performance(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_performance(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-dates/performance"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'orderNumber', 'status', 'from', 'to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_delivery_dates(ctx:ctx()) -> {ok, [openapi_delivery_date:openapi_delivery_date()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_delivery_dates(Ctx) ->
    list_delivery_dates(Ctx, #{}).

-spec list_delivery_dates(ctx:ctx(), maps:map()) -> {ok, [openapi_delivery_date:openapi_delivery_date()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_delivery_dates(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-dates/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'orderNumber', 'status', 'from', 'to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_delivery_date(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_date(Ctx, DeliveryDateId, Body) ->
    update_delivery_date(Ctx, DeliveryDateId, Body, #{}).

-spec update_delivery_date(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_date(Ctx, DeliveryDateId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/delivery-dates/", DeliveryDateId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_delivery_date_status(ctx:ctx(), binary(), openapi_delivery_date_status_update:openapi_delivery_date_status_update()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_date_status(Ctx, DeliveryDateId, OpenapiDeliveryDateStatusUpdate) ->
    update_delivery_date_status(Ctx, DeliveryDateId, OpenapiDeliveryDateStatusUpdate, #{}).

-spec update_delivery_date_status(ctx:ctx(), binary(), openapi_delivery_date_status_update:openapi_delivery_date_status_update(), maps:map()) -> {ok, openapi_delivery_date:openapi_delivery_date(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_date_status(Ctx, DeliveryDateId, OpenapiDeliveryDateStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/delivery-dates/", DeliveryDateId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiDeliveryDateStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


