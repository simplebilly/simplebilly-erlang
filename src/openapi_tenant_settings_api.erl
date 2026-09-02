-module(openapi_tenant_settings_api).

-export([get_tenant_settings/1, get_tenant_settings/2,
         update_tenant_settings/2, update_tenant_settings/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_tenant_settings(ctx:ctx()) -> {ok, openapi_tenant_settings:openapi_tenant_settings(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_tenant_settings(Ctx) ->
    get_tenant_settings(Ctx, #{}).

-spec get_tenant_settings(ctx:ctx(), maps:map()) -> {ok, openapi_tenant_settings:openapi_tenant_settings(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_tenant_settings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/settings/tenant"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_tenant_settings(ctx:ctx(), openapi_update_tenant_settings:openapi_update_tenant_settings()) -> {ok, openapi_tenant_settings:openapi_tenant_settings(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_tenant_settings(Ctx, OpenapiUpdateTenantSettings) ->
    update_tenant_settings(Ctx, OpenapiUpdateTenantSettings, #{}).

-spec update_tenant_settings(ctx:ctx(), openapi_update_tenant_settings:openapi_update_tenant_settings(), maps:map()) -> {ok, openapi_tenant_settings:openapi_tenant_settings(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_tenant_settings(Ctx, OpenapiUpdateTenantSettings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/settings/tenant"],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateTenantSettings,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


