-module(openapi_shipment_api).

-export([create_shipment/2, create_shipment/3,
         create_shipment_from_order/3, create_shipment_from_order/4,
         delete_shipment/2, delete_shipment/3,
         get_shipment/2, get_shipment/3,
         list_shipments/1, list_shipments/2,
         track_order_public/2, track_order_public/3,
         track_shipment_api/2, track_shipment_api/3,
         update_shipment_status/3, update_shipment_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_shipment(ctx:ctx(), openapi_shipment:openapi_shipment()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipment(Ctx, OpenapiShipment) ->
    create_shipment(Ctx, OpenapiShipment, #{}).

-spec create_shipment(ctx:ctx(), openapi_shipment:openapi_shipment(), maps:map()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipment(Ctx, OpenapiShipment, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shipments"],
    QS = [],
    Headers = [],
    Body1 = OpenapiShipment,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a real shipment for an order: calls the configured carrier's label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.
%% 
-spec create_shipment_from_order(ctx:ctx(), binary(), openapi_create_shipment_request:openapi_create_shipment_request()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipment_from_order(Ctx, OrderNumber, OpenapiCreateShipmentRequest) ->
    create_shipment_from_order(Ctx, OrderNumber, OpenapiCreateShipmentRequest, #{}).

-spec create_shipment_from_order(ctx:ctx(), binary(), openapi_create_shipment_request:openapi_create_shipment_request(), maps:map()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipment_from_order(Ctx, OrderNumber, OpenapiCreateShipmentRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/orders/", OrderNumber, "/shipments"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateShipmentRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_shipment(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shipment(Ctx, ShipmentId) ->
    delete_shipment(Ctx, ShipmentId, #{}).

-spec delete_shipment(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shipment(Ctx, ShipmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/shipments/", ShipmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_shipment(ctx:ctx(), binary()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shipment(Ctx, ShipmentId) ->
    get_shipment(Ctx, ShipmentId, #{}).

-spec get_shipment(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shipment(Ctx, ShipmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipments/", ShipmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_shipments(ctx:ctx()) -> {ok, [openapi_shipment:openapi_shipment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_shipments(Ctx) ->
    list_shipments(Ctx, #{}).

-spec list_shipments(ctx:ctx(), maps:map()) -> {ok, [openapi_shipment:openapi_shipment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_shipments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipments"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).
%% 
-spec track_order_public(ctx:ctx(), openapi_track_order_request:openapi_track_order_request()) -> {ok, openapi_track_order_response:openapi_track_order_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
track_order_public(Ctx, OpenapiTrackOrderRequest) ->
    track_order_public(Ctx, OpenapiTrackOrderRequest, #{}).

-spec track_order_public(ctx:ctx(), openapi_track_order_request:openapi_track_order_request(), maps:map()) -> {ok, openapi_track_order_response:openapi_track_order_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
track_order_public(Ctx, OpenapiTrackOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/public/track"],
    QS = [],
    Headers = [],
    Body1 = OpenapiTrackOrderRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec track_shipment_api(ctx:ctx(), binary()) -> {ok, openapi_tracking_info:openapi_tracking_info(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
track_shipment_api(Ctx, ShipmentId) ->
    track_shipment_api(Ctx, ShipmentId, #{}).

-spec track_shipment_api(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_tracking_info:openapi_tracking_info(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
track_shipment_api(Ctx, ShipmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipments/", ShipmentId, "/tracking"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_shipment_status(ctx:ctx(), binary(), openapi_shipment_status_update:openapi_shipment_status_update()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shipment_status(Ctx, ShipmentId, OpenapiShipmentStatusUpdate) ->
    update_shipment_status(Ctx, ShipmentId, OpenapiShipmentStatusUpdate, #{}).

-spec update_shipment_status(ctx:ctx(), binary(), openapi_shipment_status_update:openapi_shipment_status_update(), maps:map()) -> {ok, openapi_shipment:openapi_shipment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shipment_status(Ctx, ShipmentId, OpenapiShipmentStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/shipments/", ShipmentId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiShipmentStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


