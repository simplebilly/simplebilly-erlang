-module(openapi_automations_api).

-export([list_automations/1, list_automations/2,
         trigger_automation/2, trigger_automation/3,
         update_automation/3, update_automation/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec list_automations(ctx:ctx()) -> {ok, [openapi_automation_dto:openapi_automation_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_automations(Ctx) ->
    list_automations(Ctx, #{}).

-spec list_automations(ctx:ctx(), maps:map()) -> {ok, [openapi_automation_dto:openapi_automation_dto()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_automations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/automations"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec trigger_automation(ctx:ctx(), binary()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
trigger_automation(Ctx, Key) ->
    trigger_automation(Ctx, Key, #{}).

-spec trigger_automation(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
trigger_automation(Ctx, Key, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/automations/", Key, "/trigger"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_automation(ctx:ctx(), binary(), openapi_update_automation:openapi_update_automation()) -> {ok, openapi_automation_dto:openapi_automation_dto(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_automation(Ctx, Key, OpenapiUpdateAutomation) ->
    update_automation(Ctx, Key, OpenapiUpdateAutomation, #{}).

-spec update_automation(ctx:ctx(), binary(), openapi_update_automation:openapi_update_automation(), maps:map()) -> {ok, openapi_automation_dto:openapi_automation_dto(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_automation(Ctx, Key, OpenapiUpdateAutomation, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/automations/", Key, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateAutomation,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


