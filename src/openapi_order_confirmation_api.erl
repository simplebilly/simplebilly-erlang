-module(openapi_order_confirmation_api).

-export([create_confirmation/2, create_confirmation/3,
         delete_confirmation/2, delete_confirmation/3,
         download_confirmation_pdf/2, download_confirmation_pdf/3,
         get_confirmation/2, get_confirmation/3,
         list_confirmations/1, list_confirmations/2,
         orderconfirmation_restore/2, orderconfirmation_restore/3,
         pursue_confirmation/2, pursue_confirmation/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_confirmation(ctx:ctx(), openapi_order_confirmation_create:openapi_order_confirmation_create()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_confirmation(Ctx, OpenapiOrderConfirmationCreate) ->
    create_confirmation(Ctx, OpenapiOrderConfirmationCreate, #{}).

-spec create_confirmation(ctx:ctx(), openapi_order_confirmation_create:openapi_order_confirmation_create(), maps:map()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_confirmation(Ctx, OpenapiOrderConfirmationCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/order-confirmations"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderConfirmationCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_confirmation(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_confirmation(Ctx, ConfirmationId) ->
    delete_confirmation(Ctx, ConfirmationId, #{}).

-spec delete_confirmation(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_confirmation(Ctx, ConfirmationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/order-confirmations/", ConfirmationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec download_confirmation_pdf(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_confirmation_pdf(Ctx, ConfirmationId) ->
    download_confirmation_pdf(Ctx, ConfirmationId, #{}).

-spec download_confirmation_pdf(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_confirmation_pdf(Ctx, ConfirmationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/order-confirmations/", ConfirmationId, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_confirmation(ctx:ctx(), binary()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_confirmation(Ctx, ConfirmationId) ->
    get_confirmation(Ctx, ConfirmationId, #{}).

-spec get_confirmation(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_confirmation(Ctx, ConfirmationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/order-confirmations/", ConfirmationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_confirmations(ctx:ctx()) -> {ok, [openapi_order_confirmation:openapi_order_confirmation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_confirmations(Ctx) ->
    list_confirmations(Ctx, #{}).

-spec list_confirmations(ctx:ctx(), maps:map()) -> {ok, [openapi_order_confirmation:openapi_order_confirmation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_confirmations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/order-confirmations/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec orderconfirmation_restore(ctx:ctx(), binary()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
orderconfirmation_restore(Ctx, ConfirmationId) ->
    orderconfirmation_restore(Ctx, ConfirmationId, #{}).

-spec orderconfirmation_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
orderconfirmation_restore(Ctx, ConfirmationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/order-confirmations/", ConfirmationId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pursue_confirmation(ctx:ctx(), binary()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pursue_confirmation(Ctx, ConfirmationId) ->
    pursue_confirmation(Ctx, ConfirmationId, #{}).

-spec pursue_confirmation(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pursue_confirmation(Ctx, ConfirmationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/order-confirmations/", ConfirmationId, "/pursue"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


