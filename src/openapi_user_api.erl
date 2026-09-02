-module(openapi_user_api).

-export([change_password/2, change_password/3,
         create_team/2, create_team/3,
         generate_api_key/1, generate_api_key/2,
         invite_user/2, invite_user/3,
         list_teams/1, list_teams/2,
         remove_user_from_org/2, remove_user_from_org/3,
         update_profile/2, update_profile/3,
         user_profile/1, user_profile/2,
         user_tenants/1, user_tenants/2]).

-define(BASE_URL, <<"">>).

%% @doc Change the current user's password (requires the current password).
%% 
-spec change_password(ctx:ctx(), openapi_change_password_request:openapi_change_password_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
change_password(Ctx, OpenapiChangePasswordRequest) ->
    change_password(Ctx, OpenapiChangePasswordRequest, #{}).

-spec change_password(ctx:ctx(), openapi_change_password_request:openapi_change_password_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
change_password(Ctx, OpenapiChangePasswordRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/user/change-password"],
    QS = [],
    Headers = [],
    Body1 = OpenapiChangePasswordRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new team within the current tenant
%% 
-spec create_team(ctx:ctx(), openapi_team_create:openapi_team_create()) -> {ok, openapi_api_response_team:openapi_api_response_team(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_team(Ctx, OpenapiTeamCreate) ->
    create_team(Ctx, OpenapiTeamCreate, #{}).

-spec create_team(ctx:ctx(), openapi_team_create:openapi_team_create(), maps:map()) -> {ok, openapi_api_response_team:openapi_api_response_team(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_team(Ctx, OpenapiTeamCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/user/teams"],
    QS = [],
    Headers = [],
    Body1 = OpenapiTeamCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate a new API key for the current user
%% 
-spec generate_api_key(ctx:ctx()) -> {ok, openapi_api_response_string:openapi_api_response_string(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_api_key(Ctx) ->
    generate_api_key(Ctx, #{}).

-spec generate_api_key(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_string:openapi_api_response_string(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_api_key(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/user/api-key"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invite a user to the current tenant/organization
%% 
-spec invite_user(ctx:ctx(), openapi_invite_request:openapi_invite_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
invite_user(Ctx, OpenapiInviteRequest) ->
    invite_user(Ctx, OpenapiInviteRequest, #{}).

-spec invite_user(ctx:ctx(), openapi_invite_request:openapi_invite_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
invite_user(Ctx, OpenapiInviteRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/user/invite"],
    QS = [],
    Headers = [],
    Body1 = OpenapiInviteRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all teams in the current tenant
%% 
-spec list_teams(ctx:ctx()) -> {ok, openapi_api_response_vec_team:openapi_api_response_vec_team(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_teams(Ctx) ->
    list_teams(Ctx, #{}).

-spec list_teams(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_vec_team:openapi_api_response_vec_team(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_teams(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/user/teams"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Remove a user from the current organization
%% 
-spec remove_user_from_org(ctx:ctx(), openapi_remove_user_request:openapi_remove_user_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
remove_user_from_org(Ctx, OpenapiRemoveUserRequest) ->
    remove_user_from_org(Ctx, OpenapiRemoveUserRequest, #{}).

-spec remove_user_from_org(ctx:ctx(), openapi_remove_user_request:openapi_remove_user_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
remove_user_from_org(Ctx, OpenapiRemoveUserRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/user/remove"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRemoveUserRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update the current user's profile
%% 
-spec update_profile(ctx:ctx(), openapi_update_profile_request:openapi_update_profile_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_profile(Ctx, OpenapiUpdateProfileRequest) ->
    update_profile(Ctx, OpenapiUpdateProfileRequest, #{}).

-spec update_profile(ctx:ctx(), openapi_update_profile_request:openapi_update_profile_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_profile(Ctx, OpenapiUpdateProfileRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/user/profile"],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateProfileRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the current user's profile
%% 
-spec user_profile(ctx:ctx()) -> {ok, openapi_api_response_user_profile:openapi_api_response_user_profile(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
user_profile(Ctx) ->
    user_profile(Ctx, #{}).

-spec user_profile(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_user_profile:openapi_api_response_user_profile(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
user_profile(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/user/profile"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all tenants (organizations) the current user belongs to
%% 
-spec user_tenants(ctx:ctx()) -> {ok, openapi_api_response_vec_user_tenant_info:openapi_api_response_vec_user_tenant_info(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
user_tenants(Ctx) ->
    user_tenants(Ctx, #{}).

-spec user_tenants(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_vec_user_tenant_info:openapi_api_response_vec_user_tenant_info(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
user_tenants(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/user/tenants"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


