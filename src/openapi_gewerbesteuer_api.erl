-module(openapi_gewerbesteuer_api).

-export([gewerbesteuer_api/2, gewerbesteuer_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec gewerbesteuer_api(ctx:ctx(), integer()) -> {ok, openapi_gewerbesteuer_ergebnis:openapi_gewerbesteuer_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gewerbesteuer_api(Ctx, Year) ->
    gewerbesteuer_api(Ctx, Year, #{}).

-spec gewerbesteuer_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_gewerbesteuer_ergebnis:openapi_gewerbesteuer_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gewerbesteuer_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/gewerbesteuer"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params(['hebesatz', 'gewerbeertrag', 'country', 'gemeindeschluessel'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


