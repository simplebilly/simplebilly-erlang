-module(openapi_peppol_api).

-export([peppol_api/2, peppol_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec peppol_api(ctx:ctx(), binary()) -> {ok, openapi_peppol_response:openapi_peppol_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
peppol_api(Ctx, Id) ->
    peppol_api(Ctx, Id, #{}).

-spec peppol_api(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_peppol_response:openapi_peppol_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
peppol_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/invoices/", Id, "/peppol"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


