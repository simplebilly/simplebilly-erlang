-module(openapi_proforma_invoice_api).

-export([convert_proforma_to_invoice/2, convert_proforma_to_invoice/3,
         create_proforma_invoice/2, create_proforma_invoice/3,
         delete_proforma_invoice/2, delete_proforma_invoice/3,
         get_proforma_invoice/2, get_proforma_invoice/3,
         list_proforma_invoices/1, list_proforma_invoices/2,
         update_proforma_invoice/3, update_proforma_invoice/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec convert_proforma_to_invoice(ctx:ctx(), binary()) -> {ok, openapi_convert_response:openapi_convert_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
convert_proforma_to_invoice(Ctx, ProformaId) ->
    convert_proforma_to_invoice(Ctx, ProformaId, #{}).

-spec convert_proforma_to_invoice(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_convert_response:openapi_convert_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
convert_proforma_to_invoice(Ctx, ProformaId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/proforma-invoices/", ProformaId, "/convert"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_proforma_invoice(ctx:ctx(), openapi_proforma_invoice:openapi_proforma_invoice()) -> {ok, openapi_proforma_invoice:openapi_proforma_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_proforma_invoice(Ctx, OpenapiProformaInvoice) ->
    create_proforma_invoice(Ctx, OpenapiProformaInvoice, #{}).

-spec create_proforma_invoice(ctx:ctx(), openapi_proforma_invoice:openapi_proforma_invoice(), maps:map()) -> {ok, openapi_proforma_invoice:openapi_proforma_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_proforma_invoice(Ctx, OpenapiProformaInvoice, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/proforma-invoices"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProformaInvoice,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_proforma_invoice(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_proforma_invoice(Ctx, ProformaId) ->
    delete_proforma_invoice(Ctx, ProformaId, #{}).

-spec delete_proforma_invoice(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_proforma_invoice(Ctx, ProformaId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/proforma-invoices/", ProformaId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_proforma_invoice(ctx:ctx(), binary()) -> {ok, openapi_proforma_invoice:openapi_proforma_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_proforma_invoice(Ctx, ProformaId) ->
    get_proforma_invoice(Ctx, ProformaId, #{}).

-spec get_proforma_invoice(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_proforma_invoice:openapi_proforma_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_proforma_invoice(Ctx, ProformaId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/proforma-invoices/", ProformaId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_proforma_invoices(ctx:ctx()) -> {ok, [openapi_proforma_invoice:openapi_proforma_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_proforma_invoices(Ctx) ->
    list_proforma_invoices(Ctx, #{}).

-spec list_proforma_invoices(ctx:ctx(), maps:map()) -> {ok, [openapi_proforma_invoice:openapi_proforma_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_proforma_invoices(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/proforma-invoices/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'customer_id', 'order_number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_proforma_invoice(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_proforma_invoice:openapi_proforma_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_proforma_invoice(Ctx, ProformaId, Body) ->
    update_proforma_invoice(Ctx, ProformaId, Body, #{}).

-spec update_proforma_invoice(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_proforma_invoice:openapi_proforma_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_proforma_invoice(Ctx, ProformaId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/proforma-invoices/", ProformaId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


