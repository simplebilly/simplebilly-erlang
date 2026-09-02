-module(openapi_down_payment_invoice_api).

-export([download_down_payment_invoice_pdf/2, download_down_payment_invoice_pdf/3,
         get_down_payment_invoice/2, get_down_payment_invoice/3,
         list_down_payment_invoices/1, list_down_payment_invoices/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec download_down_payment_invoice_pdf(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_down_payment_invoice_pdf(Ctx, Id) ->
    download_down_payment_invoice_pdf(Ctx, Id, #{}).

-spec download_down_payment_invoice_pdf(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_down_payment_invoice_pdf(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/down-payment-invoices/", Id, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_down_payment_invoice(ctx:ctx(), binary()) -> {ok, openapi_down_payment_invoice:openapi_down_payment_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_down_payment_invoice(Ctx, Id) ->
    get_down_payment_invoice(Ctx, Id, #{}).

-spec get_down_payment_invoice(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_down_payment_invoice:openapi_down_payment_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_down_payment_invoice(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/down-payment-invoices/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_down_payment_invoices(ctx:ctx()) -> {ok, [openapi_down_payment_invoice:openapi_down_payment_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_down_payment_invoices(Ctx) ->
    list_down_payment_invoices(Ctx, #{}).

-spec list_down_payment_invoices(ctx:ctx(), maps:map()) -> {ok, [openapi_down_payment_invoice:openapi_down_payment_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_down_payment_invoices(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/down-payment-invoices/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


