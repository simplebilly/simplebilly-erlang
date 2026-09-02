-module(openapi_ai_api).

-export([ai_suggest_api/2, ai_suggest_api/3,
         create_worker_api/2, create_worker_api/3,
         list_workers_api/1, list_workers_api/2,
         run_worker_api/3, run_worker_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec ai_suggest_api(ctx:ctx(), openapi_ai_suggestion_request:openapi_ai_suggestion_request()) -> {ok, openapi_ai_suggestion:openapi_ai_suggestion(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ai_suggest_api(Ctx, OpenapiAiSuggestionRequest) ->
    ai_suggest_api(Ctx, OpenapiAiSuggestionRequest, #{}).

-spec ai_suggest_api(ctx:ctx(), openapi_ai_suggestion_request:openapi_ai_suggestion_request(), maps:map()) -> {ok, openapi_ai_suggestion:openapi_ai_suggestion(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ai_suggest_api(Ctx, OpenapiAiSuggestionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/support/ai/suggest"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAiSuggestionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_worker_api(ctx:ctx(), openapi_ai_config_dto:openapi_ai_config_dto()) -> {ok, openapi_ai_worker_config:openapi_ai_worker_config(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_worker_api(Ctx, OpenapiAiConfigDto) ->
    create_worker_api(Ctx, OpenapiAiConfigDto, #{}).

-spec create_worker_api(ctx:ctx(), openapi_ai_config_dto:openapi_ai_config_dto(), maps:map()) -> {ok, openapi_ai_worker_config:openapi_ai_worker_config(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_worker_api(Ctx, OpenapiAiConfigDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/support/ai/workers"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAiConfigDto,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_workers_api(ctx:ctx()) -> {ok, [openapi_ai_worker_config:openapi_ai_worker_config()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_workers_api(Ctx) ->
    list_workers_api(Ctx, #{}).

-spec list_workers_api(ctx:ctx(), maps:map()) -> {ok, [openapi_ai_worker_config:openapi_ai_worker_config()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_workers_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/support/ai/workers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec run_worker_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_ai_suggestion_request:openapi_ai_suggestion_request()) -> {ok, openapi_ai_suggestion:openapi_ai_suggestion(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
run_worker_api(Ctx, WorkerId, OpenapiAiSuggestionRequest) ->
    run_worker_api(Ctx, WorkerId, OpenapiAiSuggestionRequest, #{}).

-spec run_worker_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_ai_suggestion_request:openapi_ai_suggestion_request(), maps:map()) -> {ok, openapi_ai_suggestion:openapi_ai_suggestion(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
run_worker_api(Ctx, WorkerId, OpenapiAiSuggestionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/support/ai/workers/", WorkerId, "/run"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAiSuggestionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


