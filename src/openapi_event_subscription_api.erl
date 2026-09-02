-module(openapi_event_subscription_api).

-export([create_event_subscription/2, create_event_subscription/3,
         delete_event_subscription/2, delete_event_subscription/3,
         list_event_subscriptions/1, list_event_subscriptions/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_event_subscription(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_event_subscription:openapi_event_subscription(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_event_subscription(Ctx, Body) ->
    create_event_subscription(Ctx, Body, #{}).

-spec create_event_subscription(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_event_subscription:openapi_event_subscription(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_event_subscription(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/event-subscriptions"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_event_subscription(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_event_subscription(Ctx, SubscriptionId) ->
    delete_event_subscription(Ctx, SubscriptionId, #{}).

-spec delete_event_subscription(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_event_subscription(Ctx, SubscriptionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/event-subscriptions/", SubscriptionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_event_subscriptions(ctx:ctx()) -> {ok, [openapi_event_subscription:openapi_event_subscription()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_event_subscriptions(Ctx) ->
    list_event_subscriptions(Ctx, #{}).

-spec list_event_subscriptions(ctx:ctx(), maps:map()) -> {ok, [openapi_event_subscription:openapi_event_subscription()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_event_subscriptions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/event-subscriptions/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


