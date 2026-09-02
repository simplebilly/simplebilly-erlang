-module(openapi_voucher_api).

-export([create_voucher/2, create_voucher/3,
         delete_voucher/2, delete_voucher/3,
         get_voucher/2, get_voucher/3,
         list_vouchers/1, list_vouchers/2,
         update_voucher/3, update_voucher/4,
         voucher_restore/2, voucher_restore/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_voucher(ctx:ctx(), openapi_voucher_create:openapi_voucher_create()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_voucher(Ctx, OpenapiVoucherCreate) ->
    create_voucher(Ctx, OpenapiVoucherCreate, #{}).

-spec create_voucher(ctx:ctx(), openapi_voucher_create:openapi_voucher_create(), maps:map()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_voucher(Ctx, OpenapiVoucherCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/vouchers"],
    QS = [],
    Headers = [],
    Body1 = OpenapiVoucherCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_voucher(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_voucher(Ctx, VoucherId) ->
    delete_voucher(Ctx, VoucherId, #{}).

-spec delete_voucher(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_voucher(Ctx, VoucherId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/vouchers/", VoucherId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_voucher(ctx:ctx(), binary()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_voucher(Ctx, VoucherId) ->
    get_voucher(Ctx, VoucherId, #{}).

-spec get_voucher(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_voucher(Ctx, VoucherId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/vouchers/", VoucherId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_vouchers(ctx:ctx()) -> {ok, [openapi_voucher:openapi_voucher()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_vouchers(Ctx) ->
    list_vouchers(Ctx, #{}).

-spec list_vouchers(ctx:ctx(), maps:map()) -> {ok, [openapi_voucher:openapi_voucher()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_vouchers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/vouchers/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'voucher_type', 'voucher_status', 'contact_name', 'date_from', 'date_to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_voucher(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_voucher(Ctx, VoucherId, Body) ->
    update_voucher(Ctx, VoucherId, Body, #{}).

-spec update_voucher(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_voucher(Ctx, VoucherId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/vouchers/", VoucherId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec voucher_restore(ctx:ctx(), binary()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
voucher_restore(Ctx, VoucherId) ->
    voucher_restore(Ctx, VoucherId, #{}).

-spec voucher_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_voucher:openapi_voucher(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
voucher_restore(Ctx, VoucherId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/vouchers/", VoucherId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


