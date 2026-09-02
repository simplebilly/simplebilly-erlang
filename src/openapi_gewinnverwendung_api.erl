-module(openapi_gewinnverwendung_api).

-export([gewinnverwendung_api/2, gewinnverwendung_api/3,
         gewinnverwendung_export_api/2, gewinnverwendung_export_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec gewinnverwendung_api(ctx:ctx(), integer()) -> {ok, openapi_gewinnverwendungs_report:openapi_gewinnverwendungs_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gewinnverwendung_api(Ctx, Year) ->
    gewinnverwendung_api(Ctx, Year, #{}).

-spec gewinnverwendung_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_gewinnverwendungs_report:openapi_gewinnverwendungs_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gewinnverwendung_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/gewinnverwendung"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec gewinnverwendung_export_api(ctx:ctx(), integer()) -> {ok, openapi_gewinnverwendungs_export_response:openapi_gewinnverwendungs_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gewinnverwendung_export_api(Ctx, Year) ->
    gewinnverwendung_export_api(Ctx, Year, #{}).

-spec gewinnverwendung_export_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_gewinnverwendungs_export_response:openapi_gewinnverwendungs_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gewinnverwendung_export_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/gewinnverwendung/export"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


