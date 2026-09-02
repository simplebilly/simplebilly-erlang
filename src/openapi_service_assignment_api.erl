-module(openapi_service_assignment_api).

-export([create_service_assignment/2, create_service_assignment/3,
         delete_service_assignment/2, delete_service_assignment/3,
         get_service_assignment/2, get_service_assignment/3,
         get_service_assignments/1, get_service_assignments/2,
         update_service_assignment/3, update_service_assignment/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_service_assignment(ctx:ctx(), openapi_service_assignment_create:openapi_service_assignment_create()) -> {ok, openapi_service_assignment:openapi_service_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_service_assignment(Ctx, OpenapiServiceAssignmentCreate) ->
    create_service_assignment(Ctx, OpenapiServiceAssignmentCreate, #{}).

-spec create_service_assignment(ctx:ctx(), openapi_service_assignment_create:openapi_service_assignment_create(), maps:map()) -> {ok, openapi_service_assignment:openapi_service_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_service_assignment(Ctx, OpenapiServiceAssignmentCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/service-assignments"],
    QS = [],
    Headers = [],
    Body1 = OpenapiServiceAssignmentCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_service_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_service_assignment(Ctx, Id) ->
    delete_service_assignment(Ctx, Id, #{}).

-spec delete_service_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_service_assignment(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/service-assignments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_service_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_service_assignment:openapi_service_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_assignment(Ctx, Id) ->
    get_service_assignment(Ctx, Id, #{}).

-spec get_service_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_service_assignment:openapi_service_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_assignment(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/service-assignments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_service_assignments(ctx:ctx()) -> {ok, [openapi_service_assignment:openapi_service_assignment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_assignments(Ctx) ->
    get_service_assignments(Ctx, #{}).

-spec get_service_assignments(ctx:ctx(), maps:map()) -> {ok, [openapi_service_assignment:openapi_service_assignment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_service_assignments(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/service-assignments/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_service_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_service_assignment_update:openapi_service_assignment_update()) -> {ok, openapi_service_assignment:openapi_service_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_service_assignment(Ctx, Id, OpenapiServiceAssignmentUpdate) ->
    update_service_assignment(Ctx, Id, OpenapiServiceAssignmentUpdate, #{}).

-spec update_service_assignment(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_service_assignment_update:openapi_service_assignment_update(), maps:map()) -> {ok, openapi_service_assignment:openapi_service_assignment(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_service_assignment(Ctx, Id, OpenapiServiceAssignmentUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/service-assignments/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiServiceAssignmentUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


