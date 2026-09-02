-module(openapi_training_assignment_api).

-export([create_training_assignment/2, create_training_assignment/3,
         delete_training_assignment/2, delete_training_assignment/3,
         get_training_assignment/2, get_training_assignment/3,
         get_training_assignments/1, get_training_assignments/2,
         update_training_assignment/3, update_training_assignment/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_training_assignment(ctx:ctx(), openapi_training_assignment_create:openapi_training_assignment_create()) -> {ok, openapi_training_assignment:openapi_training_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_training_assignment(Ctx, OpenapiTrainingAssignmentCreate) ->
    create_training_assignment(Ctx, OpenapiTrainingAssignmentCreate, #{}).

-spec create_training_assignment(ctx:ctx(), openapi_training_assignment_create:openapi_training_assignment_create(), maps:map()) -> {ok, openapi_training_assignment:openapi_training_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_training_assignment(Ctx, OpenapiTrainingAssignmentCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/training-assignments"],
    QS = [],
    Headers = [],
    Body1 = OpenapiTrainingAssignmentCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_training_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_training_assignment(Ctx, Id) ->
    delete_training_assignment(Ctx, Id, #{}).

-spec delete_training_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_training_assignment(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/training-assignments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_training_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_training_assignment:openapi_training_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_assignment(Ctx, Id) ->
    get_training_assignment(Ctx, Id, #{}).

-spec get_training_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_training_assignment:openapi_training_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_assignment(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/training-assignments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_training_assignments(ctx:ctx()) -> {ok, [openapi_training_assignment:openapi_training_assignment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_assignments(Ctx) ->
    get_training_assignments(Ctx, #{}).

-spec get_training_assignments(ctx:ctx(), maps:map()) -> {ok, [openapi_training_assignment:openapi_training_assignment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_training_assignments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/training-assignments/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_training_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_training_assignment_update:openapi_training_assignment_update()) -> {ok, openapi_training_assignment:openapi_training_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_training_assignment(Ctx, Id, OpenapiTrainingAssignmentUpdate) ->
    update_training_assignment(Ctx, Id, OpenapiTrainingAssignmentUpdate, #{}).

-spec update_training_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_training_assignment_update:openapi_training_assignment_update(), maps:map()) -> {ok, openapi_training_assignment:openapi_training_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_training_assignment(Ctx, Id, OpenapiTrainingAssignmentUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/training-assignments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiTrainingAssignmentUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


