-module(openapi_payment_condition_api).

-export([list_payment_conditions_api/1, list_payment_conditions_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec list_payment_conditions_api(ctx:ctx()) -> {ok, [openapi_payment_condition:openapi_payment_condition()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_payment_conditions_api(Ctx) ->
    list_payment_conditions_api(Ctx, #{}).

-spec list_payment_conditions_api(ctx:ctx(), maps:map()) -> {ok, [openapi_payment_condition:openapi_payment_condition()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_payment_conditions_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payment-conditions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


