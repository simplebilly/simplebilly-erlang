-module(openapi_onlineshop_api).

-export([get_smtp_config_api/1, get_smtp_config_api/2,
         save_smtp_config_api/2, save_smtp_config_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_smtp_config_api(ctx:ctx()) -> {ok, openapi_smtp_config:openapi_smtp_config(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_smtp_config_api(Ctx) ->
    get_smtp_config_api(Ctx, #{}).

-spec get_smtp_config_api(ctx:ctx(), maps:map()) -> {ok, openapi_smtp_config:openapi_smtp_config(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_smtp_config_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/settings/smtp"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec save_smtp_config_api(ctx:ctx()) -> {ok, openapi_smtp_config:openapi_smtp_config(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
save_smtp_config_api(Ctx) ->
    save_smtp_config_api(Ctx, #{}).

-spec save_smtp_config_api(ctx:ctx(), maps:map()) -> {ok, openapi_smtp_config:openapi_smtp_config(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
save_smtp_config_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/settings/smtp"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSmtpConfig,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


