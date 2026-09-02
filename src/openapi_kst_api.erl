-module(openapi_kst_api).

-export([kst_api/2, kst_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec kst_api(ctx:ctx(), integer()) -> {ok, openapi_kst_ergebnis:openapi_kst_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
kst_api(Ctx, Year) ->
    kst_api(Ctx, Year, #{}).

-spec kst_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_kst_ergebnis:openapi_kst_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
kst_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/kst"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params(['gewinn'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


