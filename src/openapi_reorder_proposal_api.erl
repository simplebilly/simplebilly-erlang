-module(openapi_reorder_proposal_api).

-export([apply_reorder_proposal/1, apply_reorder_proposal/2,
         get_reorder_proposal/1, get_reorder_proposal/2]).

-define(BASE_URL, <<"">>).

%% @doc Convert a reorder proposal into a draft purchase order.
%% Returns the created purchase order id. Suggested line items are generated with the current reorder quantity per product.
-spec apply_reorder_proposal(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_reorder_proposal(Ctx) ->
    apply_reorder_proposal(Ctx, #{}).

-spec apply_reorder_proposal(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_reorder_proposal(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/reorder-proposals/apply"],
    QS = lists:flatten([])++openapi_utils:optional_params(['configuredOnly', 'warehouseId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_reorder_proposal(ctx:ctx()) -> {ok, openapi_reorder_proposal_response:openapi_reorder_proposal_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_reorder_proposal(Ctx) ->
    get_reorder_proposal(Ctx, #{}).

-spec get_reorder_proposal(ctx:ctx(), maps:map()) -> {ok, openapi_reorder_proposal_response:openapi_reorder_proposal_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_reorder_proposal(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/reorder-proposals"],
    QS = lists:flatten([])++openapi_utils:optional_params(['configuredOnly', 'warehouseId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


