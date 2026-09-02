-module(openapi_absence_api).

-export([create_absence/2, create_absence/3,
         delete_absence/2, delete_absence/3,
         get_absence/2, get_absence/3,
         get_absences/1, get_absences/2,
         update_absence/3, update_absence/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_absence(ctx:ctx(), openapi_absence_create:openapi_absence_create()) -> {ok, openapi_absence:openapi_absence(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_absence(Ctx, OpenapiAbsenceCreate) ->
    create_absence(Ctx, OpenapiAbsenceCreate, #{}).

-spec create_absence(ctx:ctx(), openapi_absence_create:openapi_absence_create(), maps:map()) -> {ok, openapi_absence:openapi_absence(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_absence(Ctx, OpenapiAbsenceCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/absences"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAbsenceCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_absence(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_absence(Ctx, Id) ->
    delete_absence(Ctx, Id, #{}).

-spec delete_absence(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_absence(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/absences/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_absence(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_absence:openapi_absence(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_absence(Ctx, Id) ->
    get_absence(Ctx, Id, #{}).

-spec get_absence(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_absence:openapi_absence(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_absence(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/absences/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_absences(ctx:ctx()) -> {ok, [openapi_absence:openapi_absence()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_absences(Ctx) ->
    get_absences(Ctx, #{}).

-spec get_absences(ctx:ctx(), maps:map()) -> {ok, [openapi_absence:openapi_absence()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_absences(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/absences/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_absence(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_absence_update:openapi_absence_update()) -> {ok, openapi_absence:openapi_absence(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_absence(Ctx, Id, OpenapiAbsenceUpdate) ->
    update_absence(Ctx, Id, OpenapiAbsenceUpdate, #{}).

-spec update_absence(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_absence_update:openapi_absence_update(), maps:map()) -> {ok, openapi_absence:openapi_absence(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_absence(Ctx, Id, OpenapiAbsenceUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/absences/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiAbsenceUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


