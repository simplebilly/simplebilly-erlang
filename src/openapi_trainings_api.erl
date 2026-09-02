-module(openapi_trainings_api).

-export([get_my_trainings/1, get_my_trainings/2,
         get_training_content/2, get_training_content/3,
         get_training_overview/1, get_training_overview/2,
         submit_training_result/2, submit_training_result/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_my_trainings(ctx:ctx()) -> {ok, [openapi_my_training_item:openapi_my_training_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_my_trainings(Ctx) ->
    get_my_trainings(Ctx, #{}).

-spec get_my_trainings(ctx:ctx(), maps:map()) -> {ok, [openapi_my_training_item:openapi_my_training_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_my_trainings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/trainings/me"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_training_content(ctx:ctx(), binary()) -> {ok, openapi_training_content:openapi_training_content(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_content(Ctx, Code) ->
    get_training_content(Ctx, Code, #{}).

-spec get_training_content(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_training_content:openapi_training_content(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_content(Ctx, Code, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/trainings/content/", Code, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_training_overview(ctx:ctx()) -> {ok, [openapi_hr_training_overview:openapi_hr_training_overview()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_overview(Ctx) ->
    get_training_overview(Ctx, #{}).

-spec get_training_overview(ctx:ctx(), maps:map()) -> {ok, [openapi_hr_training_overview:openapi_hr_training_overview()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_overview(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/trainings/overview"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec submit_training_result(ctx:ctx(), openapi_submit_result_dto:openapi_submit_result_dto()) -> {ok, openapi_submit_result_response:openapi_submit_result_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
submit_training_result(Ctx, OpenapiSubmitResultDto) ->
    submit_training_result(Ctx, OpenapiSubmitResultDto, #{}).

-spec submit_training_result(ctx:ctx(), openapi_submit_result_dto:openapi_submit_result_dto(), maps:map()) -> {ok, openapi_submit_result_response:openapi_submit_result_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
submit_training_result(Ctx, OpenapiSubmitResultDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/trainings/submit-result"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSubmitResultDto,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


