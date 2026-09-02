-module(openapi_compliance_training_api).

-export([create_compliance_training/2, create_compliance_training/3,
         delete_compliance_training/2, delete_compliance_training/3,
         get_compliance_training/2, get_compliance_training/3,
         get_compliance_trainings/1, get_compliance_trainings/2,
         update_compliance_training/3, update_compliance_training/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_compliance_training(ctx:ctx(), openapi_compliance_training_create:openapi_compliance_training_create()) -> {ok, openapi_compliance_training:openapi_compliance_training(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_compliance_training(Ctx, OpenapiComplianceTrainingCreate) ->
    create_compliance_training(Ctx, OpenapiComplianceTrainingCreate, #{}).

-spec create_compliance_training(ctx:ctx(), openapi_compliance_training_create:openapi_compliance_training_create(), maps:map()) -> {ok, openapi_compliance_training:openapi_compliance_training(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_compliance_training(Ctx, OpenapiComplianceTrainingCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/compliance-trainings"],
    QS = [],
    Headers = [],
    Body1 = OpenapiComplianceTrainingCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_compliance_training(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_compliance_training(Ctx, Id) ->
    delete_compliance_training(Ctx, Id, #{}).

-spec delete_compliance_training(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_compliance_training(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/compliance-trainings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_compliance_training(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_compliance_training:openapi_compliance_training(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_compliance_training(Ctx, Id) ->
    get_compliance_training(Ctx, Id, #{}).

-spec get_compliance_training(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_compliance_training:openapi_compliance_training(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_compliance_training(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/compliance-trainings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_compliance_trainings(ctx:ctx()) -> {ok, [openapi_compliance_training:openapi_compliance_training()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_compliance_trainings(Ctx) ->
    get_compliance_trainings(Ctx, #{}).

-spec get_compliance_trainings(ctx:ctx(), maps:map()) -> {ok, [openapi_compliance_training:openapi_compliance_training()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_compliance_trainings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/compliance-trainings/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_compliance_training(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_compliance_training_update:openapi_compliance_training_update()) -> {ok, openapi_compliance_training:openapi_compliance_training(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_compliance_training(Ctx, Id, OpenapiComplianceTrainingUpdate) ->
    update_compliance_training(Ctx, Id, OpenapiComplianceTrainingUpdate, #{}).

-spec update_compliance_training(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_compliance_training_update:openapi_compliance_training_update(), maps:map()) -> {ok, openapi_compliance_training:openapi_compliance_training(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_compliance_training(Ctx, Id, OpenapiComplianceTrainingUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/compliance-trainings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiComplianceTrainingUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


