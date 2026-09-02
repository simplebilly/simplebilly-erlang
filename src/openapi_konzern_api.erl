-module(openapi_konzern_api).

-export([konzern_export_api/2, konzern_export_api/3,
         konzern_status_api/2, konzern_status_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec konzern_export_api(ctx:ctx(), integer()) -> {ok, openapi_konzern_export_response:openapi_konzern_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
konzern_export_api(Ctx, Year) ->
    konzern_export_api(Ctx, Year, #{}).

-spec konzern_export_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_konzern_export_response:openapi_konzern_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
konzern_export_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/konzern/status/export"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec konzern_status_api(ctx:ctx(), integer()) -> {ok, openapi_konzern_status:openapi_konzern_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
konzern_status_api(Ctx, Year) ->
    konzern_status_api(Ctx, Year, #{}).

-spec konzern_status_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_konzern_status:openapi_konzern_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
konzern_status_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/konzern/status"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


