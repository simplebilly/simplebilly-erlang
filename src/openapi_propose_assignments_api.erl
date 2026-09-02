-module(openapi_propose_assignments_api).

-export([propose_assignments_api/1, propose_assignments_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec propose_assignments_api(ctx:ctx()) -> {ok, [openapi_proposed_assignment:openapi_proposed_assignment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
propose_assignments_api(Ctx) ->
    propose_assignments_api(Ctx, #{}).

-spec propose_assignments_api(ctx:ctx(), maps:map()) -> {ok, [openapi_proposed_assignment:openapi_proposed_assignment()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
propose_assignments_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/propose-assignments"],
    QS = lists:flatten([])++openapi_utils:optional_params(['min_confidence', 'customer_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


