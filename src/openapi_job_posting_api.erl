-module(openapi_job_posting_api).

-export([create_job_posting/2, create_job_posting/3,
         delete_job_posting/2, delete_job_posting/3,
         get_job_posting/2, get_job_posting/3,
         list_job_postings/1, list_job_postings/2,
         update_job_posting/3, update_job_posting/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_job_posting(ctx:ctx(), openapi_job_posting_create:openapi_job_posting_create()) -> {ok, openapi_job_posting:openapi_job_posting(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_job_posting(Ctx, OpenapiJobPostingCreate) ->
    create_job_posting(Ctx, OpenapiJobPostingCreate, #{}).

-spec create_job_posting(ctx:ctx(), openapi_job_posting_create:openapi_job_posting_create(), maps:map()) -> {ok, openapi_job_posting:openapi_job_posting(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_job_posting(Ctx, OpenapiJobPostingCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/job-postings"],
    QS = [],
    Headers = [],
    Body1 = OpenapiJobPostingCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_job_posting(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_job_posting(Ctx, Id) ->
    delete_job_posting(Ctx, Id, #{}).

-spec delete_job_posting(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_job_posting(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/job-postings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_job_posting(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_job_posting:openapi_job_posting(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_posting(Ctx, Id) ->
    get_job_posting(Ctx, Id, #{}).

-spec get_job_posting(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_job_posting:openapi_job_posting(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_posting(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/job-postings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_job_postings(ctx:ctx()) -> {ok, [openapi_job_posting:openapi_job_posting()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_job_postings(Ctx) ->
    list_job_postings(Ctx, #{}).

-spec list_job_postings(ctx:ctx(), maps:map()) -> {ok, [openapi_job_posting:openapi_job_posting()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_job_postings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/job-postings"],
    QS = lists:flatten([])++openapi_utils:optional_params(['status', 'page', 'pageSize'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_job_posting(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_job_posting_update:openapi_job_posting_update()) -> {ok, openapi_job_posting:openapi_job_posting(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_job_posting(Ctx, Id, OpenapiJobPostingUpdate) ->
    update_job_posting(Ctx, Id, OpenapiJobPostingUpdate, #{}).

-spec update_job_posting(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_job_posting_update:openapi_job_posting_update(), maps:map()) -> {ok, openapi_job_posting:openapi_job_posting(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_job_posting(Ctx, Id, OpenapiJobPostingUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/job-postings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiJobPostingUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


