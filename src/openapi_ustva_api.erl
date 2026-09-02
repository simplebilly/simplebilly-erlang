-module(openapi_ustva_api).

-export([jahresust_api/2, jahresust_api/3,
         ustva_api/2, ustva_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec jahresust_api(ctx:ctx(), integer()) -> {ok, openapi_jahres_ust_ergebnis:openapi_jahres_ust_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
jahresust_api(Ctx, Year) ->
    jahresust_api(Ctx, Year, #{}).

-spec jahresust_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_jahres_ust_ergebnis:openapi_jahres_ust_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
jahresust_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/jahresust"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec ustva_api(ctx:ctx(), binary()) -> {ok, openapi_ustva_ergebnis:openapi_ustva_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ustva_api(Ctx, Zeitraum) ->
    ustva_api(Ctx, Zeitraum, #{}).

-spec ustva_api(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_ustva_ergebnis:openapi_ustva_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ustva_api(Ctx, Zeitraum, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/ustva"],
    QS = lists:flatten([{<<"zeitraum">>, Zeitraum}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


