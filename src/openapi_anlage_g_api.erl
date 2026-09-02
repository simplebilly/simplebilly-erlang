-module(openapi_anlage_g_api).

-export([anlage_g_api/2, anlage_g_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec anlage_g_api(ctx:ctx(), integer()) -> {ok, openapi_anlage_g_ergebnis:openapi_anlage_g_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
anlage_g_api(Ctx, Year) ->
    anlage_g_api(Ctx, Year, #{}).

-spec anlage_g_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_anlage_g_ergebnis:openapi_anlage_g_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
anlage_g_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/anlage-g"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


