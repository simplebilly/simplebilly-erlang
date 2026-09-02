-module(openapi_delivery_appointment_api).

-export([create_delivery_appointment/2, create_delivery_appointment/3,
         delete_delivery_appointment/2, delete_delivery_appointment/3,
         get_delivery_appointment/2, get_delivery_appointment/3,
         get_public_delivery_appointment_status/4, get_public_delivery_appointment_status/5,
         list_delivery_appointments/1, list_delivery_appointments/2,
         request_public_delivery_appointment/2, request_public_delivery_appointment/3,
         update_delivery_appointment/3, update_delivery_appointment/4,
         update_delivery_appointment_status/3, update_delivery_appointment_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_delivery_appointment(ctx:ctx(), openapi_delivery_appointment_create:openapi_delivery_appointment_create()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_delivery_appointment(Ctx, OpenapiDeliveryAppointmentCreate) ->
    create_delivery_appointment(Ctx, OpenapiDeliveryAppointmentCreate, #{}).

-spec create_delivery_appointment(ctx:ctx(), openapi_delivery_appointment_create:openapi_delivery_appointment_create(), maps:map()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_delivery_appointment(Ctx, OpenapiDeliveryAppointmentCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/delivery-appointments"],
    QS = [],
    Headers = [],
    Body1 = OpenapiDeliveryAppointmentCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_delivery_appointment(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_delivery_appointment(Ctx, AppointmentId) ->
    delete_delivery_appointment(Ctx, AppointmentId, #{}).

-spec delete_delivery_appointment(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_delivery_appointment(Ctx, AppointmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/delivery-appointments/", AppointmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_delivery_appointment(ctx:ctx(), binary()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_appointment(Ctx, AppointmentId) ->
    get_delivery_appointment(Ctx, AppointmentId, #{}).

-spec get_delivery_appointment(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_appointment(Ctx, AppointmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-appointments/", AppointmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.
%% 
-spec get_public_delivery_appointment_status(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_public_delivery_appointment_status_response:openapi_public_delivery_appointment_status_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_public_delivery_appointment_status(Ctx, AppointmentId, Email, Token) ->
    get_public_delivery_appointment_status(Ctx, AppointmentId, Email, Token, #{}).

-spec get_public_delivery_appointment_status(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_public_delivery_appointment_status_response:openapi_public_delivery_appointment_status_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_public_delivery_appointment_status(Ctx, AppointmentId, Email, Token, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/public/delivery-appointments/status"],
    QS = lists:flatten([{<<"appointmentId">>, AppointmentId}, {<<"email">>, Email}, {<<"token">>, Token}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_delivery_appointments(ctx:ctx()) -> {ok, [openapi_delivery_appointment:openapi_delivery_appointment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_delivery_appointments(Ctx) ->
    list_delivery_appointments(Ctx, #{}).

-spec list_delivery_appointments(ctx:ctx(), maps:map()) -> {ok, [openapi_delivery_appointment:openapi_delivery_appointment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_delivery_appointments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-appointments"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'warehouse_id', 'from', 'to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by `code` — never from the request.
%% 
-spec request_public_delivery_appointment(ctx:ctx(), openapi_public_delivery_appointment_request:openapi_public_delivery_appointment_request()) -> {ok, openapi_public_delivery_appointment_response:openapi_public_delivery_appointment_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
request_public_delivery_appointment(Ctx, OpenapiPublicDeliveryAppointmentRequest) ->
    request_public_delivery_appointment(Ctx, OpenapiPublicDeliveryAppointmentRequest, #{}).

-spec request_public_delivery_appointment(ctx:ctx(), openapi_public_delivery_appointment_request:openapi_public_delivery_appointment_request(), maps:map()) -> {ok, openapi_public_delivery_appointment_response:openapi_public_delivery_appointment_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
request_public_delivery_appointment(Ctx, OpenapiPublicDeliveryAppointmentRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/public/delivery-appointments/request"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPublicDeliveryAppointmentRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_delivery_appointment(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_appointment(Ctx, AppointmentId, Body) ->
    update_delivery_appointment(Ctx, AppointmentId, Body, #{}).

-spec update_delivery_appointment(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_appointment(Ctx, AppointmentId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/delivery-appointments/", AppointmentId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_delivery_appointment_status(ctx:ctx(), binary(), openapi_appointment_status_update:openapi_appointment_status_update()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_appointment_status(Ctx, AppointmentId, OpenapiAppointmentStatusUpdate) ->
    update_delivery_appointment_status(Ctx, AppointmentId, OpenapiAppointmentStatusUpdate, #{}).

-spec update_delivery_appointment_status(ctx:ctx(), binary(), openapi_appointment_status_update:openapi_appointment_status_update(), maps:map()) -> {ok, openapi_delivery_appointment:openapi_delivery_appointment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_delivery_appointment_status(Ctx, AppointmentId, OpenapiAppointmentStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/delivery-appointments/", AppointmentId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAppointmentStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


