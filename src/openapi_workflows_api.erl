-module(openapi_workflows_api).

-export([list_workflows_api/1, list_workflows_api/2,
         set_workflow_enabled_api/3, set_workflow_enabled_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec list_workflows_api(ctx:ctx()) -> {ok, [openapi_workflow:openapi_workflow()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_workflows_api(Ctx) ->
    list_workflows_api(Ctx, #{}).

-spec list_workflows_api(ctx:ctx(), maps:map()) -> {ok, [openapi_workflow:openapi_workflow()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_workflows_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/workflows"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec set_workflow_enabled_api(ctx:ctx(), binary(), openapi_workflow_enabled_update:openapi_workflow_enabled_update()) -> {ok, openapi_workflow:openapi_workflow(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
set_workflow_enabled_api(Ctx, WorkflowId, OpenapiWorkflowEnabledUpdate) ->
    set_workflow_enabled_api(Ctx, WorkflowId, OpenapiWorkflowEnabledUpdate, #{}).

-spec set_workflow_enabled_api(ctx:ctx(), binary(), openapi_workflow_enabled_update:openapi_workflow_enabled_update(), maps:map()) -> {ok, openapi_workflow:openapi_workflow(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
set_workflow_enabled_api(Ctx, WorkflowId, OpenapiWorkflowEnabledUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/workflows/", WorkflowId, "/enabled"],
    QS = [],
    Headers = [],
    Body1 = OpenapiWorkflowEnabledUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


