-module(openapi_service_job_api).

-export([create_service_job/2, create_service_job/3,
         delete_service_job/2, delete_service_job/3,
         get_service_job/2, get_service_job/3,
         get_service_jobs/1, get_service_jobs/2,
         update_service_job/3, update_service_job/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_service_job(ctx:ctx(), openapi_service_job_create:openapi_service_job_create()) -> {ok, openapi_service_job:openapi_service_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_service_job(Ctx, OpenapiServiceJobCreate) ->
    create_service_job(Ctx, OpenapiServiceJobCreate, #{}).

-spec create_service_job(ctx:ctx(), openapi_service_job_create:openapi_service_job_create(), maps:map()) -> {ok, openapi_service_job:openapi_service_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_service_job(Ctx, OpenapiServiceJobCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/service-jobs"],
    QS = [],
    Headers = [],
    Body1 = OpenapiServiceJobCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_service_job(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_service_job(Ctx, Id) ->
    delete_service_job(Ctx, Id, #{}).

-spec delete_service_job(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_service_job(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/service-jobs/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_service_job(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_service_job:openapi_service_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_job(Ctx, Id) ->
    get_service_job(Ctx, Id, #{}).

-spec get_service_job(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_service_job:openapi_service_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_job(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/service-jobs/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_service_jobs(ctx:ctx()) -> {ok, [openapi_service_job:openapi_service_job()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_jobs(Ctx) ->
    get_service_jobs(Ctx, #{}).

-spec get_service_jobs(ctx:ctx(), maps:map()) -> {ok, [openapi_service_job:openapi_service_job()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/service-jobs/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_service_job(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_service_job_update:openapi_service_job_update()) -> {ok, openapi_service_job:openapi_service_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_service_job(Ctx, Id, OpenapiServiceJobUpdate) ->
    update_service_job(Ctx, Id, OpenapiServiceJobUpdate, #{}).

-spec update_service_job(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_service_job_update:openapi_service_job_update(), maps:map()) -> {ok, openapi_service_job:openapi_service_job(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_service_job(Ctx, Id, OpenapiServiceJobUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/service-jobs/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiServiceJobUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


