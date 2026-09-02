-module(openapi_supplier_invoice_api).

-export([create_supplier_invoice/2, create_supplier_invoice/3,
         delete_supplier_invoice/2, delete_supplier_invoice/3,
         get_supplier_invoice/2, get_supplier_invoice/3,
         list_supplier_invoices/1, list_supplier_invoices/2,
         update_supplier_invoice/3, update_supplier_invoice/4,
         update_supplier_invoice_status/3, update_supplier_invoice_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_supplier_invoice(ctx:ctx(), openapi_supplier_invoice:openapi_supplier_invoice()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_supplier_invoice(Ctx, OpenapiSupplierInvoice) ->
    create_supplier_invoice(Ctx, OpenapiSupplierInvoice, #{}).

-spec create_supplier_invoice(ctx:ctx(), openapi_supplier_invoice:openapi_supplier_invoice(), maps:map()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_supplier_invoice(Ctx, OpenapiSupplierInvoice, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/supplier-invoices"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSupplierInvoice,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_supplier_invoice(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_supplier_invoice(Ctx, SupplierInvoiceId) ->
    delete_supplier_invoice(Ctx, SupplierInvoiceId, #{}).

-spec delete_supplier_invoice(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_supplier_invoice(Ctx, SupplierInvoiceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/supplier-invoices/", SupplierInvoiceId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_supplier_invoice(ctx:ctx(), binary()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_supplier_invoice(Ctx, SupplierInvoiceId) ->
    get_supplier_invoice(Ctx, SupplierInvoiceId, #{}).

-spec get_supplier_invoice(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_supplier_invoice(Ctx, SupplierInvoiceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/supplier-invoices/", SupplierInvoiceId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_supplier_invoices(ctx:ctx()) -> {ok, [openapi_supplier_invoice:openapi_supplier_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_supplier_invoices(Ctx) ->
    list_supplier_invoices(Ctx, #{}).

-spec list_supplier_invoices(ctx:ctx(), maps:map()) -> {ok, [openapi_supplier_invoice:openapi_supplier_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_supplier_invoices(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/supplier-invoices/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'purchase_order_id', 'supplier_name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_supplier_invoice(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_supplier_invoice(Ctx, SupplierInvoiceId, Body) ->
    update_supplier_invoice(Ctx, SupplierInvoiceId, Body, #{}).

-spec update_supplier_invoice(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_supplier_invoice(Ctx, SupplierInvoiceId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/supplier-invoices/", SupplierInvoiceId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_supplier_invoice_status(ctx:ctx(), binary(), openapi_supplier_invoice_status_update:openapi_supplier_invoice_status_update()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_supplier_invoice_status(Ctx, SupplierInvoiceId, OpenapiSupplierInvoiceStatusUpdate) ->
    update_supplier_invoice_status(Ctx, SupplierInvoiceId, OpenapiSupplierInvoiceStatusUpdate, #{}).

-spec update_supplier_invoice_status(ctx:ctx(), binary(), openapi_supplier_invoice_status_update:openapi_supplier_invoice_status_update(), maps:map()) -> {ok, openapi_supplier_invoice:openapi_supplier_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_supplier_invoice_status(Ctx, SupplierInvoiceId, OpenapiSupplierInvoiceStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/supplier-invoices/", SupplierInvoiceId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSupplierInvoiceStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


