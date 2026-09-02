-module(openapi_webhooks_api).

-export([create_subscription/2, create_subscription/3,
         delete_subscription/2, delete_subscription/3,
         emit_api/2, emit_api/3,
         list_event/1, list_event/2,
         list_subscriptions/1, list_subscriptions/2,
         update_subscription/3, update_subscription/4]).

-define(BASE_URL, <<"">>).

%% @doc Create a webhook subscription (outbound hook).
%% 
-spec create_subscription(ctx:ctx(), openapi_create_subscription_request:openapi_create_subscription_request()) -> {ok, openapi_webhook_subscription:openapi_webhook_subscription(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_subscription(Ctx, OpenapiCreateSubscriptionRequest) ->
    create_subscription(Ctx, OpenapiCreateSubscriptionRequest, #{}).

-spec create_subscription(ctx:ctx(), openapi_create_subscription_request:openapi_create_subscription_request(), maps:map()) -> {ok, openapi_webhook_subscription:openapi_webhook_subscription(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_subscription(Ctx, OpenapiCreateSubscriptionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/webhook-subscriptions"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateSubscriptionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a webhook subscription.
%% 
-spec delete_subscription(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_subscription(Ctx, SubscriptionId) ->
    delete_subscription(Ctx, SubscriptionId, #{}).

-spec delete_subscription(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_subscription(Ctx, SubscriptionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/webhook-subscriptions/", SubscriptionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Manually fire an event against matching hooks (for testing/flows).
%% 
-spec emit_api(ctx:ctx(), openapi_emit_event_request:openapi_emit_event_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emit_api(Ctx, OpenapiEmitEventRequest) ->
    emit_api(Ctx, OpenapiEmitEventRequest, #{}).

-spec emit_api(ctx:ctx(), openapi_emit_event_request:openapi_emit_event_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emit_api(Ctx, OpenapiEmitEventRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/webhooks/emit"],
    QS = [],
    Headers = [],
    Body1 = OpenapiEmitEventRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List webhook events (inbound + outbound log).
%% 
-spec list_event(ctx:ctx()) -> {ok, [openapi_webhook_event:openapi_webhook_event()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_event(Ctx) ->
    list_event(Ctx, #{}).

-spec list_event(ctx:ctx(), maps:map()) -> {ok, [openapi_webhook_event:openapi_webhook_event()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_event(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/webhook-events"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List webhook subscriptions for the tenant.
%% 
-spec list_subscriptions(ctx:ctx()) -> {ok, [openapi_webhook_subscription:openapi_webhook_subscription()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_subscriptions(Ctx) ->
    list_subscriptions(Ctx, #{}).

-spec list_subscriptions(ctx:ctx(), maps:map()) -> {ok, [openapi_webhook_subscription:openapi_webhook_subscription()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_subscriptions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/webhook-subscriptions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a webhook subscription.
%% 
-spec update_subscription(ctx:ctx(), binary(), openapi_update_subscription_request:openapi_update_subscription_request()) -> {ok, openapi_webhook_subscription:openapi_webhook_subscription(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_subscription(Ctx, SubscriptionId, OpenapiUpdateSubscriptionRequest) ->
    update_subscription(Ctx, SubscriptionId, OpenapiUpdateSubscriptionRequest, #{}).

-spec update_subscription(ctx:ctx(), binary(), openapi_update_subscription_request:openapi_update_subscription_request(), maps:map()) -> {ok, openapi_webhook_subscription:openapi_webhook_subscription(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_subscription(Ctx, SubscriptionId, OpenapiUpdateSubscriptionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/webhook-subscriptions/", SubscriptionId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateSubscriptionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


