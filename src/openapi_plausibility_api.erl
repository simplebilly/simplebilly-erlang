-module(openapi_plausibility_api).

-export([plausibility_check_api/1, plausibility_check_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec plausibility_check_api(ctx:ctx()) -> {ok, openapi_plausibility_report:openapi_plausibility_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
plausibility_check_api(Ctx) ->
    plausibility_check_api(Ctx, #{}).

-spec plausibility_check_api(ctx:ctx(), maps:map()) -> {ok, openapi_plausibility_report:openapi_plausibility_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
plausibility_check_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/plausibility"],
    QS = lists:flatten([])++openapi_utils:optional_params(['date_from', 'date_to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


