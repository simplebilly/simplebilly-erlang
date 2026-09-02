-module(openapi_participation_api).

-export([create_participation/2, create_participation/3,
         delete_participation/2, delete_participation/3,
         get_participation/2, get_participation/3,
         get_participations/1, get_participations/2,
         update_participation/3, update_participation/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_participation(ctx:ctx(), openapi_participation_create:openapi_participation_create()) -> {ok, openapi_participation:openapi_participation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_participation(Ctx, OpenapiParticipationCreate) ->
    create_participation(Ctx, OpenapiParticipationCreate, #{}).

-spec create_participation(ctx:ctx(), openapi_participation_create:openapi_participation_create(), maps:map()) -> {ok, openapi_participation:openapi_participation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_participation(Ctx, OpenapiParticipationCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/participations"],
    QS = [],
    Headers = [],
    Body1 = OpenapiParticipationCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_participation(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_participation(Ctx, Id) ->
    delete_participation(Ctx, Id, #{}).

-spec delete_participation(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_participation(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/participations/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_participation(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_participation:openapi_participation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_participation(Ctx, Id) ->
    get_participation(Ctx, Id, #{}).

-spec get_participation(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_participation:openapi_participation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_participation(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/participations/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_participations(ctx:ctx()) -> {ok, [openapi_participation:openapi_participation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_participations(Ctx) ->
    get_participations(Ctx, #{}).

-spec get_participations(ctx:ctx(), maps:map()) -> {ok, [openapi_participation:openapi_participation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_participations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/participations/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_participation(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_participation_update:openapi_participation_update()) -> {ok, openapi_participation:openapi_participation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_participation(Ctx, Id, OpenapiParticipationUpdate) ->
    update_participation(Ctx, Id, OpenapiParticipationUpdate, #{}).

-spec update_participation(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_participation_update:openapi_participation_update(), maps:map()) -> {ok, openapi_participation:openapi_participation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_participation(Ctx, Id, OpenapiParticipationUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/participations/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiParticipationUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


