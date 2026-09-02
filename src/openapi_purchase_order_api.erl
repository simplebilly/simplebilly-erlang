-module(openapi_purchase_order_api).

-export([create_purchase_order/2, create_purchase_order/3,
         delete_purchase_order/2, delete_purchase_order/3,
         get_purchase_order/2, get_purchase_order/3,
         list_purchase_orders/1, list_purchase_orders/2,
         match_invoice/3, match_invoice/4,
         update_purchase_order/3, update_purchase_order/4,
         update_purchase_order_status/3, update_purchase_order_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_purchase_order(ctx:ctx(), openapi_purchase_order:openapi_purchase_order()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_purchase_order(Ctx, OpenapiPurchaseOrder) ->
    create_purchase_order(Ctx, OpenapiPurchaseOrder, #{}).

-spec create_purchase_order(ctx:ctx(), openapi_purchase_order:openapi_purchase_order(), maps:map()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_purchase_order(Ctx, OpenapiPurchaseOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/purchase-orders"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPurchaseOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_purchase_order(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_purchase_order(Ctx, PurchaseOrderId) ->
    delete_purchase_order(Ctx, PurchaseOrderId, #{}).

-spec delete_purchase_order(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_purchase_order(Ctx, PurchaseOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/purchase-orders/", PurchaseOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_purchase_order(ctx:ctx(), binary()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_purchase_order(Ctx, PurchaseOrderId) ->
    get_purchase_order(Ctx, PurchaseOrderId, #{}).

-spec get_purchase_order(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_purchase_order(Ctx, PurchaseOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/purchase-orders/", PurchaseOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_purchase_orders(ctx:ctx()) -> {ok, [openapi_purchase_order:openapi_purchase_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_purchase_orders(Ctx) ->
    list_purchase_orders(Ctx, #{}).

-spec list_purchase_orders(ctx:ctx(), maps:map()) -> {ok, [openapi_purchase_order:openapi_purchase_order()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_purchase_orders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/purchase-orders/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'supplier_name', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
%% 
-spec match_invoice(ctx:ctx(), binary(), openapi_invoice_match_request:openapi_invoice_match_request()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
match_invoice(Ctx, PurchaseOrderId, OpenapiInvoiceMatchRequest) ->
    match_invoice(Ctx, PurchaseOrderId, OpenapiInvoiceMatchRequest, #{}).

-spec match_invoice(ctx:ctx(), binary(), openapi_invoice_match_request:openapi_invoice_match_request(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
match_invoice(Ctx, PurchaseOrderId, OpenapiInvoiceMatchRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/purchase-orders/", PurchaseOrderId, "/match-invoice"],
    QS = [],
    Headers = [],
    Body1 = OpenapiInvoiceMatchRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_purchase_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_purchase_order(Ctx, PurchaseOrderId, Body) ->
    update_purchase_order(Ctx, PurchaseOrderId, Body, #{}).

-spec update_purchase_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_purchase_order(Ctx, PurchaseOrderId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/purchase-orders/", PurchaseOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_purchase_order_status(ctx:ctx(), binary(), openapi_purchase_order_status_update:openapi_purchase_order_status_update()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_purchase_order_status(Ctx, PurchaseOrderId, OpenapiPurchaseOrderStatusUpdate) ->
    update_purchase_order_status(Ctx, PurchaseOrderId, OpenapiPurchaseOrderStatusUpdate, #{}).

-spec update_purchase_order_status(ctx:ctx(), binary(), openapi_purchase_order_status_update:openapi_purchase_order_status_update(), maps:map()) -> {ok, openapi_purchase_order:openapi_purchase_order(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_purchase_order_status(Ctx, PurchaseOrderId, OpenapiPurchaseOrderStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/purchase-orders/", PurchaseOrderId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPurchaseOrderStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


