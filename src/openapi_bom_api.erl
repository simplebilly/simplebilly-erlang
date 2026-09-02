-module(openapi_bom_api).

-export([create_bom/2, create_bom/3,
         delete_bom/2, delete_bom/3,
         get_bom/2, get_bom/3,
         list_boms/1, list_boms/2,
         update_bom/3, update_bom/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_bom(ctx:ctx(), openapi_bom_create:openapi_bom_create()) -> {ok, openapi_bom:openapi_bom(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_bom(Ctx, OpenapiBomCreate) ->
    create_bom(Ctx, OpenapiBomCreate, #{}).

-spec create_bom(ctx:ctx(), openapi_bom_create:openapi_bom_create(), maps:map()) -> {ok, openapi_bom:openapi_bom(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_bom(Ctx, OpenapiBomCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/boms"],
    QS = [],
    Headers = [],
    Body1 = OpenapiBomCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_bom(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_bom(Ctx, BomId) ->
    delete_bom(Ctx, BomId, #{}).

-spec delete_bom(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_bom(Ctx, BomId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/boms/", BomId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_bom(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_bom:openapi_bom(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_bom(Ctx, BomId) ->
    get_bom(Ctx, BomId, #{}).

-spec get_bom(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_bom:openapi_bom(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_bom(Ctx, BomId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/boms/", BomId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_boms(ctx:ctx()) -> {ok, [openapi_bom:openapi_bom()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_boms(Ctx) ->
    list_boms(Ctx, #{}).

-spec list_boms(ctx:ctx(), maps:map()) -> {ok, [openapi_bom:openapi_bom()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_boms(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/boms/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'search', 'productId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_bom(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_bom_update:openapi_bom_update()) -> {ok, openapi_bom:openapi_bom(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_bom(Ctx, BomId, OpenapiBomUpdate) ->
    update_bom(Ctx, BomId, OpenapiBomUpdate, #{}).

-spec update_bom(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_bom_update:openapi_bom_update(), maps:map()) -> {ok, openapi_bom:openapi_bom(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_bom(Ctx, BomId, OpenapiBomUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/boms/", BomId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiBomUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


