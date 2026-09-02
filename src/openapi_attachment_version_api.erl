-module(openapi_attachment_version_api).

-export([create_attachment_version/3, create_attachment_version/4,
         list_attachment_versions/2, list_attachment_versions/3,
         restore_attachment_version/3, restore_attachment_version/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_attachment_version(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_new_version_request:openapi_new_version_request()) -> {ok, openapi_attachment_version:openapi_attachment_version(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_attachment_version(Ctx, AttachmentId, OpenapiNewVersionRequest) ->
    create_attachment_version(Ctx, AttachmentId, OpenapiNewVersionRequest, #{}).

-spec create_attachment_version(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_new_version_request:openapi_new_version_request(), maps:map()) -> {ok, openapi_attachment_version:openapi_attachment_version(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_attachment_version(Ctx, AttachmentId, OpenapiNewVersionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/attachments/", AttachmentId, "/versions"],
    QS = [],
    Headers = [],
    Body1 = OpenapiNewVersionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_attachment_versions(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [openapi_attachment_version:openapi_attachment_version()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_attachment_versions(Ctx, AttachmentId) ->
    list_attachment_versions(Ctx, AttachmentId, #{}).

-spec list_attachment_versions(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [openapi_attachment_version:openapi_attachment_version()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_attachment_versions(Ctx, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/attachments/", AttachmentId, "/versions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec restore_attachment_version(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
restore_attachment_version(Ctx, AttachmentId, VersionId) ->
    restore_attachment_version(Ctx, AttachmentId, VersionId, #{}).

-spec restore_attachment_version(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_attachment:openapi_attachment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
restore_attachment_version(Ctx, AttachmentId, VersionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/attachments/", AttachmentId, "/versions/", VersionId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


