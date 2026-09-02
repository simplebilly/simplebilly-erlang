-module(openapi_fristen_api).

-export([fristen_api/1, fristen_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec fristen_api(ctx:ctx()) -> {ok, openapi_fristen_ergebnis:openapi_fristen_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
fristen_api(Ctx) ->
    fristen_api(Ctx, #{}).

-spec fristen_api(ctx:ctx(), maps:map()) -> {ok, openapi_fristen_ergebnis:openapi_fristen_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
fristen_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/fristen"],
    QS = lists:flatten([])++openapi_utils:optional_params(['bundesland', 'voranmeldungsrhythmus', 'dauerfristverlaengerung', 'est_aktiv', 'gewst_aktiv', 'monate'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


