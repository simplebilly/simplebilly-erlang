-module(openapi_euer_api).

-export([euer_api/2, euer_api/3,
         euer_kategorien_api/2, euer_kategorien_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec euer_api(ctx:ctx(), integer()) -> {ok, openapi_euer_ergebnis:openapi_euer_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
euer_api(Ctx, Year) ->
    euer_api(Ctx, Year, #{}).

-spec euer_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_euer_ergebnis:openapi_euer_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
euer_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/euer"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec euer_kategorien_api(ctx:ctx(), integer()) -> {ok, openapi_euer_detail_ergebnis:openapi_euer_detail_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
euer_kategorien_api(Ctx, Year) ->
    euer_kategorien_api(Ctx, Year, #{}).

-spec euer_kategorien_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_euer_detail_ergebnis:openapi_euer_detail_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
euer_kategorien_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/euer/kategorien"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


