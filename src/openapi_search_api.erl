-module(openapi_search_api).

-export([global_search/2, global_search/3,
         my_permissions/1, my_permissions/2]).

-define(BASE_URL, <<"">>).

%% @doc GET /api/v1/search?q=...
%% 
-spec global_search(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
global_search(Ctx, Q) ->
    global_search(Ctx, Q, #{}).

-spec global_search(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
global_search(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/search"],
    QS = lists:flatten([{<<"q">>, Q}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.
%% 
-spec my_permissions(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
my_permissions(Ctx) ->
    my_permissions(Ctx, #{}).

-spec my_permissions(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
my_permissions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/me/permissions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


