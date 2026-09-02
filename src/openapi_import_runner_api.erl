-module(openapi_import_runner_api).

-export([get_import_status/2, get_import_status/3,
         start_import/2, start_import/3,
         test_import_connection/2, test_import_connection/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_import_status(ctx:ctx(), binary()) -> {ok, openapi_import_job_status:openapi_import_job_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_import_status(Ctx, JobId) ->
    get_import_status(Ctx, JobId, #{}).

-spec get_import_status(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_import_job_status:openapi_import_job_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_import_status(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/import/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec start_import(ctx:ctx(), openapi_import_start_request:openapi_import_start_request()) -> {ok, openapi_import_start_response:openapi_import_start_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
start_import(Ctx, OpenapiImportStartRequest) ->
    start_import(Ctx, OpenapiImportStartRequest, #{}).

-spec start_import(ctx:ctx(), openapi_import_start_request:openapi_import_start_request(), maps:map()) -> {ok, openapi_import_start_response:openapi_import_start_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
start_import(Ctx, OpenapiImportStartRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/import/start"],
    QS = [],
    Headers = [],
    Body1 = OpenapiImportStartRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec test_import_connection(ctx:ctx(), openapi_import_test_request:openapi_import_test_request()) -> {ok, openapi_import_test_response:openapi_import_test_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
test_import_connection(Ctx, OpenapiImportTestRequest) ->
    test_import_connection(Ctx, OpenapiImportTestRequest, #{}).

-spec test_import_connection(ctx:ctx(), openapi_import_test_request:openapi_import_test_request(), maps:map()) -> {ok, openapi_import_test_response:openapi_import_test_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
test_import_connection(Ctx, OpenapiImportTestRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/import/test"],
    QS = [],
    Headers = [],
    Body1 = OpenapiImportTestRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


