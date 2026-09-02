-module(openapi_shipping_rule_api).

-export([create_shipping_rule/2, create_shipping_rule/3,
         delete_shipping_rule/2, delete_shipping_rule/3,
         get_shipping_rule/2, get_shipping_rule/3,
         list_shipping_rules/1, list_shipping_rules/2,
         update_shipping_rule/3, update_shipping_rule/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_shipping_rule(ctx:ctx(), openapi_shipping_rule_create:openapi_shipping_rule_create()) -> {ok, openapi_shipping_rule:openapi_shipping_rule(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipping_rule(Ctx, OpenapiShippingRuleCreate) ->
    create_shipping_rule(Ctx, OpenapiShippingRuleCreate, #{}).

-spec create_shipping_rule(ctx:ctx(), openapi_shipping_rule_create:openapi_shipping_rule_create(), maps:map()) -> {ok, openapi_shipping_rule:openapi_shipping_rule(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_shipping_rule(Ctx, OpenapiShippingRuleCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shipping-rules"],
    QS = [],
    Headers = [],
    Body1 = OpenapiShippingRuleCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_shipping_rule(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shipping_rule(Ctx, RuleId) ->
    delete_shipping_rule(Ctx, RuleId, #{}).

-spec delete_shipping_rule(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_shipping_rule(Ctx, RuleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/shipping-rules/", RuleId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_shipping_rule(ctx:ctx(), binary()) -> {ok, openapi_shipping_rule:openapi_shipping_rule(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shipping_rule(Ctx, RuleId) ->
    get_shipping_rule(Ctx, RuleId, #{}).

-spec get_shipping_rule(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_shipping_rule:openapi_shipping_rule(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_shipping_rule(Ctx, RuleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping-rules/", RuleId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_shipping_rules(ctx:ctx()) -> {ok, [openapi_shipping_rule:openapi_shipping_rule()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_shipping_rules(Ctx) ->
    list_shipping_rules(Ctx, #{}).

-spec list_shipping_rules(ctx:ctx(), maps:map()) -> {ok, [openapi_shipping_rule:openapi_shipping_rule()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_shipping_rules(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping-rules/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'country'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_shipping_rule(ctx:ctx(), binary(), openapi_shipping_rule_update:openapi_shipping_rule_update()) -> {ok, openapi_shipping_rule:openapi_shipping_rule(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shipping_rule(Ctx, RuleId, OpenapiShippingRuleUpdate) ->
    update_shipping_rule(Ctx, RuleId, OpenapiShippingRuleUpdate, #{}).

-spec update_shipping_rule(ctx:ctx(), binary(), openapi_shipping_rule_update:openapi_shipping_rule_update(), maps:map()) -> {ok, openapi_shipping_rule:openapi_shipping_rule(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_shipping_rule(Ctx, RuleId, OpenapiShippingRuleUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/shipping-rules/", RuleId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiShippingRuleUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


