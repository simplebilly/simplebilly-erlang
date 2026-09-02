-module(openapi_gez_api).

-export([gez_api/1, gez_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec gez_api(ctx:ctx()) -> {ok, openapi_gez_report:openapi_gez_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gez_api(Ctx) ->
    gez_api(Ctx, #{}).

-spec gez_api(ctx:ctx(), maps:map()) -> {ok, openapi_gez_report:openapi_gez_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gez_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/gez"],
    QS = lists:flatten([])++openapi_utils:optional_params(['jahr', 'betriebsstaetten', 'kfz', 'hotelzimmer', 'beschaefigte'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


