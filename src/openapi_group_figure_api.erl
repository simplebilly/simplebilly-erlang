-module(openapi_group_figure_api).

-export([create_group_figure/2, create_group_figure/3,
         delete_group_figure/2, delete_group_figure/3,
         get_group_figure/2, get_group_figure/3,
         get_group_figures/1, get_group_figures/2,
         update_group_figure/3, update_group_figure/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_group_figure(ctx:ctx(), openapi_group_figure_create:openapi_group_figure_create()) -> {ok, openapi_group_figure:openapi_group_figure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_group_figure(Ctx, OpenapiGroupFigureCreate) ->
    create_group_figure(Ctx, OpenapiGroupFigureCreate, #{}).

-spec create_group_figure(ctx:ctx(), openapi_group_figure_create:openapi_group_figure_create(), maps:map()) -> {ok, openapi_group_figure:openapi_group_figure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_group_figure(Ctx, OpenapiGroupFigureCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/group-figures"],
    QS = [],
    Headers = [],
    Body1 = OpenapiGroupFigureCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_group_figure(ctx:ctx(), integer()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_group_figure(Ctx, Year) ->
    delete_group_figure(Ctx, Year, #{}).

-spec delete_group_figure(ctx:ctx(), integer(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_group_figure(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/group-figures/", Year, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_group_figure(ctx:ctx(), integer()) -> {ok, openapi_group_figure:openapi_group_figure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_group_figure(Ctx, Year) ->
    get_group_figure(Ctx, Year, #{}).

-spec get_group_figure(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_group_figure:openapi_group_figure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_group_figure(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/group-figures/", Year, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_group_figures(ctx:ctx()) -> {ok, [openapi_group_figure:openapi_group_figure()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_group_figures(Ctx) ->
    get_group_figures(Ctx, #{}).

-spec get_group_figures(ctx:ctx(), maps:map()) -> {ok, [openapi_group_figure:openapi_group_figure()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_group_figures(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/group-figures/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_group_figure(ctx:ctx(), integer(), openapi_group_figure_update:openapi_group_figure_update()) -> {ok, openapi_group_figure:openapi_group_figure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_group_figure(Ctx, Year, OpenapiGroupFigureUpdate) ->
    update_group_figure(Ctx, Year, OpenapiGroupFigureUpdate, #{}).

-spec update_group_figure(ctx:ctx(), integer(), openapi_group_figure_update:openapi_group_figure_update(), maps:map()) -> {ok, openapi_group_figure:openapi_group_figure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_group_figure(Ctx, Year, OpenapiGroupFigureUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/group-figures/", Year, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiGroupFigureUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


