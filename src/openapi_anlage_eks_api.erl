-module(openapi_anlage_eks_api).

-export([eks_api/2, eks_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec eks_api(ctx:ctx(), integer()) -> {ok, openapi_eks_ergebnis:openapi_eks_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
eks_api(Ctx, Year) ->
    eks_api(Ctx, Year, #{}).

-spec eks_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_eks_ergebnis:openapi_eks_ergebnis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
eks_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/eks"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


