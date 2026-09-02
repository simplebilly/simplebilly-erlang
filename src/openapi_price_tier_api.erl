-module(openapi_price_tier_api).

-export([create_price_tier/2, create_price_tier/3,
         delete_price_tier/2, delete_price_tier/3,
         get_price_tier/2, get_price_tier/3,
         get_resolved_price/2, get_resolved_price/3,
         list_price_tiers/1, list_price_tiers/2,
         update_price_tier/3, update_price_tier/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_price_tier(ctx:ctx(), openapi_price_tier_create:openapi_price_tier_create()) -> {ok, openapi_price_tier:openapi_price_tier(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_price_tier(Ctx, OpenapiPriceTierCreate) ->
    create_price_tier(Ctx, OpenapiPriceTierCreate, #{}).

-spec create_price_tier(ctx:ctx(), openapi_price_tier_create:openapi_price_tier_create(), maps:map()) -> {ok, openapi_price_tier:openapi_price_tier(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_price_tier(Ctx, OpenapiPriceTierCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/price-tiers"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPriceTierCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_price_tier(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_price_tier(Ctx, PriceTierId) ->
    delete_price_tier(Ctx, PriceTierId, #{}).

-spec delete_price_tier(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_price_tier(Ctx, PriceTierId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/price-tiers/", PriceTierId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_price_tier(ctx:ctx(), binary()) -> {ok, openapi_price_tier:openapi_price_tier(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_price_tier(Ctx, PriceTierId) ->
    get_price_tier(Ctx, PriceTierId, #{}).

-spec get_price_tier(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_price_tier:openapi_price_tier(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_price_tier(Ctx, PriceTierId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/price-tiers/", PriceTierId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_resolved_price(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_resolved_price_response:openapi_resolved_price_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_resolved_price(Ctx, ProductId) ->
    get_resolved_price(Ctx, ProductId, #{}).

-spec get_resolved_price(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_resolved_price_response:openapi_resolved_price_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_resolved_price(Ctx, ProductId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/price-tiers/resolved"],
    QS = lists:flatten([{<<"productId">>, ProductId}])++openapi_utils:optional_params(['quantity', 'contactId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_price_tiers(ctx:ctx()) -> {ok, [openapi_price_tier:openapi_price_tier()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_price_tiers(Ctx) ->
    list_price_tiers(Ctx, #{}).

-spec list_price_tiers(ctx:ctx(), maps:map()) -> {ok, [openapi_price_tier:openapi_price_tier()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_price_tiers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/price-tiers/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'product_id', 'customer_group_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_price_tier(ctx:ctx(), binary(), openapi_price_tier_update:openapi_price_tier_update()) -> {ok, openapi_price_tier:openapi_price_tier(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_price_tier(Ctx, PriceTierId, OpenapiPriceTierUpdate) ->
    update_price_tier(Ctx, PriceTierId, OpenapiPriceTierUpdate, #{}).

-spec update_price_tier(ctx:ctx(), binary(), openapi_price_tier_update:openapi_price_tier_update(), maps:map()) -> {ok, openapi_price_tier:openapi_price_tier(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_price_tier(Ctx, PriceTierId, OpenapiPriceTierUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/price-tiers/", PriceTierId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiPriceTierUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


