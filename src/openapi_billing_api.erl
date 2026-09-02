-module(openapi_billing_api).

-export([get_plans/1, get_plans/2,
         get_quota_api/1, get_quota_api/2,
         get_subscription_api/1, get_subscription_api/2,
         get_usage_api/1, get_usage_api/2,
         paddle_subscription_webhook/1, paddle_subscription_webhook/2,
         put_quota_api/2, put_quota_api/3]).

-define(BASE_URL, <<"">>).

%% @doc All canonical plans (free/starter/business/enterprise) — the single source of truth lives in `crate::saasy::plans`, matching marketing.
%% 
-spec get_plans(ctx:ctx()) -> {ok, openapi_api_response_vec_plan:openapi_api_response_vec_plan(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_plans(Ctx) ->
    get_plans(Ctx, #{}).

-spec get_plans(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_vec_plan:openapi_api_response_vec_plan(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_plans(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/plans"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Effective limits + current usage for the calling tenant.
%% 
-spec get_quota_api(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_quota_api(Ctx) ->
    get_quota_api(Ctx, #{}).

-spec get_quota_api(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_quota_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/quota"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_subscription_api(ctx:ctx()) -> {ok, openapi_api_response_subscription_overview:openapi_api_response_subscription_overview(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_subscription_api(Ctx) ->
    get_subscription_api(Ctx, #{}).

-spec get_subscription_api(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_subscription_overview:openapi_api_response_subscription_overview(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_subscription_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/subscription"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_usage_api(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_usage_api(Ctx) ->
    get_usage_api(Ctx, #{}).

-spec get_usage_api(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_usage_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/usage"],
    QS = lists:flatten([])++openapi_utils:optional_params(['meter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Paddle Billing subscription webhook. Verifies the `Paddle-Signature` header (HMAC-SHA256 over `\"{ts}:{raw_body}\"` with the webhook secret), then updates `billing_info` and `tenants.plan` for the tenant identified by the subscription `custom_data` (JSON `{\"tenant_id\": \"...\"}` or a bare tenant UUID).
%% 
-spec paddle_subscription_webhook(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paddle_subscription_webhook(Ctx) ->
    paddle_subscription_webhook(Ctx, #{}).

-spec paddle_subscription_webhook(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paddle_subscription_webhook(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/webhooks/paddle/subscription"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Write the per-tenant quota override (`admin:settings`). An empty object clears the override.
%% 
-spec put_quota_api(ctx:ctx(), openapi_quota_override:openapi_quota_override()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
put_quota_api(Ctx, OpenapiQuotaOverride) ->
    put_quota_api(Ctx, OpenapiQuotaOverride, #{}).

-spec put_quota_api(ctx:ctx(), openapi_quota_override:openapi_quota_override(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
put_quota_api(Ctx, OpenapiQuotaOverride, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/quota"],
    QS = [],
    Headers = [],
    Body1 = OpenapiQuotaOverride,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


