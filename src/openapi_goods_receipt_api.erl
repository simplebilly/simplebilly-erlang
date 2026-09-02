-module(openapi_goods_receipt_api).

-export([create_goods_receipt/2, create_goods_receipt/3,
         delete_goods_receipt/2, delete_goods_receipt/3,
         get_goods_receipt/2, get_goods_receipt/3,
         list_goods_receipts/1, list_goods_receipts/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_goods_receipt(ctx:ctx(), openapi_goods_receipt:openapi_goods_receipt()) -> {ok, openapi_goods_receipt:openapi_goods_receipt(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_goods_receipt(Ctx, OpenapiGoodsReceipt) ->
    create_goods_receipt(Ctx, OpenapiGoodsReceipt, #{}).

-spec create_goods_receipt(ctx:ctx(), openapi_goods_receipt:openapi_goods_receipt(), maps:map()) -> {ok, openapi_goods_receipt:openapi_goods_receipt(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_goods_receipt(Ctx, OpenapiGoodsReceipt, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/goods-receipts"],
    QS = [],
    Headers = [],
    Body1 = OpenapiGoodsReceipt,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_goods_receipt(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_goods_receipt(Ctx, GoodsReceiptId) ->
    delete_goods_receipt(Ctx, GoodsReceiptId, #{}).

-spec delete_goods_receipt(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_goods_receipt(Ctx, GoodsReceiptId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/goods-receipts/", GoodsReceiptId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_goods_receipt(ctx:ctx(), binary()) -> {ok, openapi_goods_receipt:openapi_goods_receipt(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_goods_receipt(Ctx, GoodsReceiptId) ->
    get_goods_receipt(Ctx, GoodsReceiptId, #{}).

-spec get_goods_receipt(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_goods_receipt:openapi_goods_receipt(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_goods_receipt(Ctx, GoodsReceiptId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/goods-receipts/", GoodsReceiptId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_goods_receipts(ctx:ctx()) -> {ok, [openapi_goods_receipt:openapi_goods_receipt()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_goods_receipts(Ctx) ->
    list_goods_receipts(Ctx, #{}).

-spec list_goods_receipts(ctx:ctx(), maps:map()) -> {ok, [openapi_goods_receipt:openapi_goods_receipt()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_goods_receipts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/goods-receipts/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'purchase_order_id', 'supplier_name', 'warehouse_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


