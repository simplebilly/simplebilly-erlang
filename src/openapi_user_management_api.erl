-module(openapi_user_management_api).

-export([get_user/2, get_user/3,
         list_users/1, list_users/2,
         remove_user/2, remove_user/3,
         update_user_permissions/3, update_user_permissions/4,
         update_user_role/3, update_user_role/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_user(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_tenant_user:openapi_tenant_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_user(Ctx, UserId) ->
    get_user(Ctx, UserId, #{}).

-spec get_user(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_tenant_user:openapi_tenant_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_user(Ctx, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_users(ctx:ctx()) -> {ok, [openapi_tenant_user:openapi_tenant_user()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_users(Ctx) ->
    list_users(Ctx, #{}).

-spec list_users(ctx:ctx(), maps:map()) -> {ok, [openapi_tenant_user:openapi_tenant_user()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/users"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec remove_user(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
remove_user(Ctx, UserId) ->
    remove_user(Ctx, UserId, #{}).

-spec remove_user(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
remove_user(Ctx, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_user_permissions(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_update_permissions_payload:openapi_update_permissions_payload()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_user_permissions(Ctx, UserId, OpenapiUpdatePermissionsPayload) ->
    update_user_permissions(Ctx, UserId, OpenapiUpdatePermissionsPayload, #{}).

-spec update_user_permissions(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_update_permissions_payload:openapi_update_permissions_payload(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_user_permissions(Ctx, UserId, OpenapiUpdatePermissionsPayload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/users/", UserId, "/permissions"],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdatePermissionsPayload,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_user_role(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_update_role_payload:openapi_update_role_payload()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_user_role(Ctx, UserId, OpenapiUpdateRolePayload) ->
    update_user_role(Ctx, UserId, OpenapiUpdateRolePayload, #{}).

-spec update_user_role(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_update_role_payload:openapi_update_role_payload(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_user_role(Ctx, UserId, OpenapiUpdateRolePayload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/users/", UserId, "/role"],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateRolePayload,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


