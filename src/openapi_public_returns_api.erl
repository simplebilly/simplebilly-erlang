-module(openapi_public_returns_api).

-export([get_public_return_status/2, get_public_return_status/3,
         list_public_returns/3, list_public_returns/4,
         request_public_return/2, request_public_return/3]).

-define(BASE_URL, <<"">>).

%% @doc Customer checks the status of a return (public, no auth). The return is only revealed when its linked order's email matches.
%% 
-spec get_public_return_status(ctx:ctx(), binary()) -> {ok, openapi_public_return_status_response:openapi_public_return_status_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_public_return_status(Ctx, Email) ->
    get_public_return_status(Ctx, Email, #{}).

-spec get_public_return_status(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_public_return_status_response:openapi_public_return_status_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_public_return_status(Ctx, Email, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/public/returns/status"],
    QS = lists:flatten([{<<"email">>, Email}])++openapi_utils:optional_params(['returnNumber', 'returnOrderId', 'orderNumber'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all returns for an order (public, no auth).
%% 
-spec list_public_returns(ctx:ctx(), binary(), binary()) -> {ok, [openapi_public_return_status_response:openapi_public_return_status_response()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_public_returns(Ctx, OrderNumber, Email) ->
    list_public_returns(Ctx, OrderNumber, Email, #{}).

-spec list_public_returns(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_public_return_status_response:openapi_public_return_status_response()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_public_returns(Ctx, OrderNumber, Email, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/public/returns/list"],
    QS = lists:flatten([{<<"orderNumber">>, OrderNumber}, {<<"email">>, Email}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Customer requests a return for an order (public, no auth).
%% 
-spec request_public_return(ctx:ctx(), openapi_public_return_request:openapi_public_return_request()) -> {ok, openapi_public_return_response:openapi_public_return_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
request_public_return(Ctx, OpenapiPublicReturnRequest) ->
    request_public_return(Ctx, OpenapiPublicReturnRequest, #{}).

-spec request_public_return(ctx:ctx(), openapi_public_return_request:openapi_public_return_request(), maps:map()) -> {ok, openapi_public_return_response:openapi_public_return_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
request_public_return(Ctx, OpenapiPublicReturnRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/public/returns/request"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPublicReturnRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


