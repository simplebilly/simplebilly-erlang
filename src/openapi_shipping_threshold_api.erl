-module(openapi_shipping_threshold_api).

-export([create_shipping_threshold/2, create_shipping_threshold/3,
         delete_shipping_threshold/2, delete_shipping_threshold/3,
         get_deliverable/2, get_deliverable/3,
         get_shipping_threshold/2, get_shipping_threshold/3,
         list_shipping_thresholds/1, list_shipping_thresholds/2,
         update_shipping_threshold/3, update_shipping_threshold/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_shipping_threshold(ctx:ctx(), openapi_shipping_threshold_create:openapi_shipping_threshold_create()) -> {ok, openapi_shipping_threshold:openapi_shipping_threshold(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipping_threshold(Ctx, OpenapiShippingThresholdCreate) ->
    create_shipping_threshold(Ctx, OpenapiShippingThresholdCreate, #{}).

-spec create_shipping_threshold(ctx:ctx(), openapi_shipping_threshold_create:openapi_shipping_threshold_create(), maps:map()) -> {ok, openapi_shipping_threshold:openapi_shipping_threshold(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipping_threshold(Ctx, OpenapiShippingThresholdCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shipping-thresholds"],
    QS = [],
    Headers = [],
    Body1 = OpenapiShippingThresholdCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_shipping_threshold(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shipping_threshold(Ctx, ThresholdId) ->
    delete_shipping_threshold(Ctx, ThresholdId, #{}).

-spec delete_shipping_threshold(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shipping_threshold(Ctx, ThresholdId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/shipping-thresholds/", ThresholdId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_deliverable(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_deliverable_response:openapi_deliverable_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_deliverable(Ctx, ProductId) ->
    get_deliverable(Ctx, ProductId, #{}).

-spec get_deliverable(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_deliverable_response:openapi_deliverable_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_deliverable(Ctx, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping-thresholds/deliverable"],
    QS = lists:flatten([{<<"productId">>, ProductId}])++openapi_utils:optional_params(['warehouseId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_shipping_threshold(ctx:ctx(), binary()) -> {ok, openapi_shipping_threshold:openapi_shipping_threshold(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shipping_threshold(Ctx, ThresholdId) ->
    get_shipping_threshold(Ctx, ThresholdId, #{}).

-spec get_shipping_threshold(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_shipping_threshold:openapi_shipping_threshold(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shipping_threshold(Ctx, ThresholdId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping-thresholds/", ThresholdId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_shipping_thresholds(ctx:ctx()) -> {ok, [openapi_shipping_threshold:openapi_shipping_threshold()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_shipping_thresholds(Ctx) ->
    list_shipping_thresholds(Ctx, #{}).

-spec list_shipping_thresholds(ctx:ctx(), maps:map()) -> {ok, [openapi_shipping_threshold:openapi_shipping_threshold()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_shipping_thresholds(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping-thresholds/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'product_id', 'warehouse_id', 'is_active'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_shipping_threshold(ctx:ctx(), binary(), openapi_shipping_threshold_update:openapi_shipping_threshold_update()) -> {ok, openapi_shipping_threshold:openapi_shipping_threshold(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shipping_threshold(Ctx, ThresholdId, OpenapiShippingThresholdUpdate) ->
    update_shipping_threshold(Ctx, ThresholdId, OpenapiShippingThresholdUpdate, #{}).

-spec update_shipping_threshold(ctx:ctx(), binary(), openapi_shipping_threshold_update:openapi_shipping_threshold_update(), maps:map()) -> {ok, openapi_shipping_threshold:openapi_shipping_threshold(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shipping_threshold(Ctx, ThresholdId, OpenapiShippingThresholdUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/shipping-thresholds/", ThresholdId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiShippingThresholdUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


