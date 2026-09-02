-module(openapi_job_application_api).

-export([apply_public/2, apply_public/3,
         delete_job_application/2, delete_job_application/3,
         download_cv/2, download_cv/3,
         get_job_application/2, get_job_application/3,
         inbound_email/1, inbound_email/2,
         list_job_applications/1, list_job_applications/2,
         list_public_postings/1, list_public_postings/2,
         score_job_application/2, score_job_application/3,
         update_job_application_status/3, update_job_application_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec apply_public(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_public(Ctx, PostingId) ->
    apply_public(Ctx, PostingId, #{}).

-spec apply_public(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_public(Ctx, PostingId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/public/jobs/", PostingId, "/apply"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_job_application(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_job_application(Ctx, ApplicationId) ->
    delete_job_application(Ctx, ApplicationId, #{}).

-spec delete_job_application(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_job_application(Ctx, ApplicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/job-applications/", ApplicationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec download_cv(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_cv(Ctx, ApplicationId) ->
    download_cv(Ctx, ApplicationId, #{}).

-spec download_cv(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_cv(Ctx, ApplicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/job-applications/", ApplicationId, "/cv"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_job_application(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_application(Ctx, ApplicationId) ->
    get_job_application(Ctx, ApplicationId, #{}).

-spec get_job_application(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_application(Ctx, ApplicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/job-applications/", ApplicationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with `from`, `subject`, `body-plain` and one or more `attachment-N` file fields. The subject may reference a posting as `[JOB-<posting_id>]`; without one the application lands in the general inbox.
%% 
-spec inbound_email(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
inbound_email(Ctx) ->
    inbound_email(Ctx, #{}).

-spec inbound_email(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
inbound_email(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/public/jobs/inbound-email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_job_applications(ctx:ctx()) -> {ok, [openapi_job_application:openapi_job_application()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_job_applications(Ctx) ->
    list_job_applications(Ctx, #{}).

-spec list_job_applications(ctx:ctx(), maps:map()) -> {ok, [openapi_job_application:openapi_job_application()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_job_applications(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/job-applications"],
    QS = lists:flatten([])++openapi_utils:optional_params(['postingId', 'status', 'page', 'pageSize'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_public_postings(ctx:ctx()) -> {ok, [openapi_public_posting:openapi_public_posting()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_public_postings(Ctx) ->
    list_public_postings(Ctx, #{}).

-spec list_public_postings(ctx:ctx(), maps:map()) -> {ok, [openapi_public_posting:openapi_public_posting()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_public_postings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/public/jobs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec score_job_application(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
score_job_application(Ctx, ApplicationId) ->
    score_job_application(Ctx, ApplicationId, #{}).

-spec score_job_application(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
score_job_application(Ctx, ApplicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/job-applications/", ApplicationId, "/score"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_job_application_status(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_application_status_dto:openapi_application_status_dto()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_job_application_status(Ctx, ApplicationId, OpenapiApplicationStatusDto) ->
    update_job_application_status(Ctx, ApplicationId, OpenapiApplicationStatusDto, #{}).

-spec update_job_application_status(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_application_status_dto:openapi_application_status_dto(), maps:map()) -> {ok, openapi_job_application:openapi_job_application(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_job_application_status(Ctx, ApplicationId, OpenapiApplicationStatusDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = patch,
    Path = [?BASE_URL, "/api/v1/job-applications/", ApplicationId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiApplicationStatusDto,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


