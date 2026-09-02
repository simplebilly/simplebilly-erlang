-module(openapi_kosten_vorschau_api).

-export([kosten_vorschau_api/3, kosten_vorschau_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec kosten_vorschau_api(ctx:ctx(), integer(), integer()) -> {ok, openapi_kosten_vorschau:openapi_kosten_vorschau(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
kosten_vorschau_api(Ctx, Year, Month) ->
    kosten_vorschau_api(Ctx, Year, Month, #{}).

-spec kosten_vorschau_api(ctx:ctx(), integer(), integer(), maps:map()) -> {ok, openapi_kosten_vorschau:openapi_kosten_vorschau(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
kosten_vorschau_api(Ctx, Year, Month, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/kosten-vorschau"],
    QS = lists:flatten([{<<"year">>, Year}, {<<"month">>, Month}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


