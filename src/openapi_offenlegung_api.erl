-module(openapi_offenlegung_api).

-export([offenlegung_api/1, offenlegung_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec offenlegung_api(ctx:ctx()) -> {ok, openapi_offenlegung_report:openapi_offenlegung_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
offenlegung_api(Ctx) ->
    offenlegung_api(Ctx, #{}).

-spec offenlegung_api(ctx:ctx(), maps:map()) -> {ok, openapi_offenlegung_report:openapi_offenlegung_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
offenlegung_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/offenlegung"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


