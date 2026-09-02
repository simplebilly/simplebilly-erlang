-module(openapi_attachment_api).

-export([attachment_restore/2, attachment_restore/3,
         create_attachment/2, create_attachment/3,
         delete_attachment/2, delete_attachment/3,
         get_attachment/2, get_attachment/3,
         list_attachments/1, list_attachments/2,
         save_attachment_ocr_text/3, save_attachment_ocr_text/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec attachment_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
attachment_restore(Ctx, Id) ->
    attachment_restore(Ctx, Id, #{}).

-spec attachment_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
attachment_restore(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/attachments/", Id, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_attachment(ctx:ctx(), openapi_attachment_create:openapi_attachment_create()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_attachment(Ctx, OpenapiAttachmentCreate) ->
    create_attachment(Ctx, OpenapiAttachmentCreate, #{}).

-spec create_attachment(ctx:ctx(), openapi_attachment_create:openapi_attachment_create(), maps:map()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_attachment(Ctx, OpenapiAttachmentCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/attachments"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAttachmentCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_attachment(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_attachment(Ctx, Id) ->
    delete_attachment(Ctx, Id, #{}).

-spec delete_attachment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_attachment(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/attachments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_attachment(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_attachment(Ctx, Id) ->
    get_attachment(Ctx, Id, #{}).

-spec get_attachment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_attachment(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/attachments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_attachments(ctx:ctx()) -> {ok, [openapi_attachment:openapi_attachment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_attachments(Ctx) ->
    list_attachments(Ctx, #{}).

-spec list_attachments(ctx:ctx(), maps:map()) -> {ok, [openapi_attachment:openapi_attachment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_attachments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/attachments/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'contactId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Persist client-side OCR output for an attachment.
%% 
-spec save_attachment_ocr_text(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_ocr_text_request:openapi_ocr_text_request()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
save_attachment_ocr_text(Ctx, AttachmentId, OpenapiOcrTextRequest) ->
    save_attachment_ocr_text(Ctx, AttachmentId, OpenapiOcrTextRequest, #{}).

-spec save_attachment_ocr_text(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_ocr_text_request:openapi_ocr_text_request(), maps:map()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
save_attachment_ocr_text(Ctx, AttachmentId, OpenapiOcrTextRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/attachments/", AttachmentId, "/ocr-text"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOcrTextRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


