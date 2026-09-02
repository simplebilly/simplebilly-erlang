-module(openapi_delivery_note_api).

-export([create_delivery_note/2, create_delivery_note/3,
         delete_delivery_note/2, delete_delivery_note/3,
         deliverynote_restore/2, deliverynote_restore/3,
         download_delivery_note_pdf/2, download_delivery_note_pdf/3,
         get_delivery_note/2, get_delivery_note/3,
         list_delivery_notes/1, list_delivery_notes/2,
         pursue_delivery_note/2, pursue_delivery_note/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_delivery_note(ctx:ctx(), openapi_delivery_note_create:openapi_delivery_note_create()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_delivery_note(Ctx, OpenapiDeliveryNoteCreate) ->
    create_delivery_note(Ctx, OpenapiDeliveryNoteCreate, #{}).

-spec create_delivery_note(ctx:ctx(), openapi_delivery_note_create:openapi_delivery_note_create(), maps:map()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_delivery_note(Ctx, OpenapiDeliveryNoteCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/delivery-notes"],
    QS = [],
    Headers = [],
    Body1 = OpenapiDeliveryNoteCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_delivery_note(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_delivery_note(Ctx, DeliveryNoteId) ->
    delete_delivery_note(Ctx, DeliveryNoteId, #{}).

-spec delete_delivery_note(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_delivery_note(Ctx, DeliveryNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/delivery-notes/", DeliveryNoteId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec deliverynote_restore(ctx:ctx(), binary()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
deliverynote_restore(Ctx, DeliveryNoteId) ->
    deliverynote_restore(Ctx, DeliveryNoteId, #{}).

-spec deliverynote_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
deliverynote_restore(Ctx, DeliveryNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/delivery-notes/", DeliveryNoteId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec download_delivery_note_pdf(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_delivery_note_pdf(Ctx, DeliveryNoteId) ->
    download_delivery_note_pdf(Ctx, DeliveryNoteId, #{}).

-spec download_delivery_note_pdf(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_delivery_note_pdf(Ctx, DeliveryNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-notes/", DeliveryNoteId, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_delivery_note(ctx:ctx(), binary()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_note(Ctx, DeliveryNoteId) ->
    get_delivery_note(Ctx, DeliveryNoteId, #{}).

-spec get_delivery_note(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_delivery_note:openapi_delivery_note(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_delivery_note(Ctx, DeliveryNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-notes/", DeliveryNoteId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_delivery_notes(ctx:ctx()) -> {ok, [openapi_delivery_note:openapi_delivery_note()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_delivery_notes(Ctx) ->
    list_delivery_notes(Ctx, #{}).

-spec list_delivery_notes(ctx:ctx(), maps:map()) -> {ok, [openapi_delivery_note:openapi_delivery_note()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_delivery_notes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/delivery-notes/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pursue_delivery_note(ctx:ctx(), binary()) -> {ok, openapi_invoice:openapi_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pursue_delivery_note(Ctx, DeliveryNoteId) ->
    pursue_delivery_note(Ctx, DeliveryNoteId, #{}).

-spec pursue_delivery_note(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_invoice:openapi_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pursue_delivery_note(Ctx, DeliveryNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/delivery-notes/", DeliveryNoteId, "/pursue"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


