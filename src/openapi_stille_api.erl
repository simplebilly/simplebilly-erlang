-module(openapi_stille_api).

-export([stille_export_api/2, stille_export_api/3,
         stille_report_api/2, stille_report_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec stille_export_api(ctx:ctx(), integer()) -> {ok, openapi_stille_export_response:openapi_stille_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
stille_export_api(Ctx, Year) ->
    stille_export_api(Ctx, Year, #{}).

-spec stille_export_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_stille_export_response:openapi_stille_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
stille_export_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/stille/export"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec stille_report_api(ctx:ctx(), integer()) -> {ok, openapi_stille_report:openapi_stille_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
stille_report_api(Ctx, Year) ->
    stille_report_api(Ctx, Year, #{}).

-spec stille_report_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_stille_report:openapi_stille_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
stille_report_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/stille/report"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


