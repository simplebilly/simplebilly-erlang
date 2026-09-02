-module(openapi_shareholder_api).

-export([create_shareholder/2, create_shareholder/3,
         delete_shareholder/2, delete_shareholder/3,
         get_shareholder/2, get_shareholder/3,
         get_shareholders/1, get_shareholders/2,
         update_shareholder/3, update_shareholder/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_shareholder(ctx:ctx(), openapi_shareholder_create:openapi_shareholder_create()) -> {ok, openapi_shareholder:openapi_shareholder(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shareholder(Ctx, OpenapiShareholderCreate) ->
    create_shareholder(Ctx, OpenapiShareholderCreate, #{}).

-spec create_shareholder(ctx:ctx(), openapi_shareholder_create:openapi_shareholder_create(), maps:map()) -> {ok, openapi_shareholder:openapi_shareholder(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shareholder(Ctx, OpenapiShareholderCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shareholders"],
    QS = [],
    Headers = [],
    Body1 = OpenapiShareholderCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_shareholder(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shareholder(Ctx, Id) ->
    delete_shareholder(Ctx, Id, #{}).

-spec delete_shareholder(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shareholder(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/shareholders/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_shareholder(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_shareholder:openapi_shareholder(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shareholder(Ctx, Id) ->
    get_shareholder(Ctx, Id, #{}).

-spec get_shareholder(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_shareholder:openapi_shareholder(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shareholder(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shareholders/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_shareholders(ctx:ctx()) -> {ok, [openapi_shareholder:openapi_shareholder()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shareholders(Ctx) ->
    get_shareholders(Ctx, #{}).

-spec get_shareholders(ctx:ctx(), maps:map()) -> {ok, [openapi_shareholder:openapi_shareholder()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shareholders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shareholders/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_shareholder(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_shareholder_update:openapi_shareholder_update()) -> {ok, openapi_shareholder:openapi_shareholder(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shareholder(Ctx, Id, OpenapiShareholderUpdate) ->
    update_shareholder(Ctx, Id, OpenapiShareholderUpdate, #{}).

-spec update_shareholder(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_shareholder_update:openapi_shareholder_update(), maps:map()) -> {ok, openapi_shareholder:openapi_shareholder(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shareholder(Ctx, Id, OpenapiShareholderUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/shareholders/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiShareholderUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


