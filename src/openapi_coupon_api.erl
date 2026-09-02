-module(openapi_coupon_api).

-export([coupon_restore/2, coupon_restore/3,
         create_coupon/2, create_coupon/3,
         delete_coupon/2, delete_coupon/3,
         get_coupon/2, get_coupon/3,
         list_coupons/1, list_coupons/2,
         update_coupon/3, update_coupon/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec coupon_restore(ctx:ctx(), binary()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
coupon_restore(Ctx, CouponId) ->
    coupon_restore(Ctx, CouponId, #{}).

-spec coupon_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
coupon_restore(Ctx, CouponId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/coupons/", CouponId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_coupon(ctx:ctx(), openapi_coupon_create:openapi_coupon_create()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_coupon(Ctx, OpenapiCouponCreate) ->
    create_coupon(Ctx, OpenapiCouponCreate, #{}).

-spec create_coupon(ctx:ctx(), openapi_coupon_create:openapi_coupon_create(), maps:map()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_coupon(Ctx, OpenapiCouponCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/coupons"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCouponCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_coupon(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_coupon(Ctx, CouponId) ->
    delete_coupon(Ctx, CouponId, #{}).

-spec delete_coupon(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_coupon(Ctx, CouponId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/coupons/", CouponId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_coupon(ctx:ctx(), binary()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_coupon(Ctx, CouponId) ->
    get_coupon(Ctx, CouponId, #{}).

-spec get_coupon(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_coupon(Ctx, CouponId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/coupons/", CouponId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_coupons(ctx:ctx()) -> {ok, [openapi_coupon:openapi_coupon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_coupons(Ctx) ->
    list_coupons(Ctx, #{}).

-spec list_coupons(ctx:ctx(), maps:map()) -> {ok, [openapi_coupon:openapi_coupon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_coupons(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/coupons/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'is_active', 'code', 'discount_type'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_coupon(ctx:ctx(), binary(), openapi_coupon_update:openapi_coupon_update()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_coupon(Ctx, CouponId, OpenapiCouponUpdate) ->
    update_coupon(Ctx, CouponId, OpenapiCouponUpdate, #{}).

-spec update_coupon(ctx:ctx(), binary(), openapi_coupon_update:openapi_coupon_update(), maps:map()) -> {ok, openapi_coupon:openapi_coupon(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_coupon(Ctx, CouponId, OpenapiCouponUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/coupons/", CouponId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiCouponUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


