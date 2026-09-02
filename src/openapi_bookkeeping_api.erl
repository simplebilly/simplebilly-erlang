-module(openapi_bookkeeping_api).

-export([allocate_payment_api/2, allocate_payment_api/3,
         bwa_report_api/1, bwa_report_api/2,
         elster_status_api/1, elster_status_api/2,
         elster_validate_api/2, elster_validate_api/3,
         elster_xml_api/2, elster_xml_api/3,
         get_cashflow/1, get_cashflow/2,
         get_liquidity/1, get_liquidity/2,
         get_open_invoices_api/2, get_open_invoices_api/3,
         get_verfahrensdokumentation/1, get_verfahrensdokumentation/2,
         run_dunning_api/1, run_dunning_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Allocate a payment to an invoice
%% 
-spec allocate_payment_api(ctx:ctx(), openapi_allocate_payment_request:openapi_allocate_payment_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
allocate_payment_api(Ctx, OpenapiAllocatePaymentRequest) ->
    allocate_payment_api(Ctx, OpenapiAllocatePaymentRequest, #{}).

-spec allocate_payment_api(ctx:ctx(), openapi_allocate_payment_request:openapi_allocate_payment_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
allocate_payment_api(Ctx, OpenapiAllocatePaymentRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payments/allocate"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAllocatePaymentRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get BWA (Betriebswirtschaftliche Auswertung) report
%% 
-spec bwa_report_api(ctx:ctx()) -> {ok, openapi_b_wa_report:openapi_b_wa_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bwa_report_api(Ctx) ->
    bwa_report_api(Ctx, #{}).

-spec bwa_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_b_wa_report:openapi_b_wa_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bwa_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/bwa"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'month'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec elster_status_api(ctx:ctx()) -> {ok, openapi_elster_status:openapi_elster_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
elster_status_api(Ctx) ->
    elster_status_api(Ctx, #{}).

-spec elster_status_api(ctx:ctx(), maps:map()) -> {ok, openapi_elster_status:openapi_elster_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
elster_status_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/elster/status"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec elster_validate_api(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
elster_validate_api(Ctx, Zeitraum) ->
    elster_validate_api(Ctx, Zeitraum, #{}).

-spec elster_validate_api(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
elster_validate_api(Ctx, Zeitraum, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/ustva/elster-validate"],
    QS = lists:flatten([{<<"zeitraum">>, Zeitraum}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec elster_xml_api(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
elster_xml_api(Ctx, Zeitraum) ->
    elster_xml_api(Ctx, Zeitraum, #{}).

-spec elster_xml_api(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
elster_xml_api(Ctx, Zeitraum, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/ustva/elster-xml"],
    QS = lists:flatten([{<<"zeitraum">>, Zeitraum}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.
%% 
-spec get_cashflow(ctx:ctx()) -> {ok, openapi_cashflow_report:openapi_cashflow_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_cashflow(Ctx) ->
    get_cashflow(Ctx, #{}).

-spec get_cashflow(ctx:ctx(), maps:map()) -> {ok, openapi_cashflow_report:openapi_cashflow_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_cashflow(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/cashflow"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'month'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.
%% 
-spec get_liquidity(ctx:ctx()) -> {ok, openapi_liquidity_position:openapi_liquidity_position(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_liquidity(Ctx) ->
    get_liquidity(Ctx, #{}).

-spec get_liquidity(ctx:ctx(), maps:map()) -> {ok, openapi_liquidity_position:openapi_liquidity_position(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_liquidity(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/liquidity"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get open invoices for a customer
%% 
-spec get_open_invoices_api(ctx:ctx(), binary()) -> {ok, [openapi_invoice:openapi_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_open_invoices_api(Ctx, CustomerId) ->
    get_open_invoices_api(Ctx, CustomerId, #{}).

-spec get_open_invoices_api(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_invoice:openapi_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_open_invoices_api(Ctx, CustomerId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payments/open-invoices/", CustomerId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.
%% 
-spec get_verfahrensdokumentation(ctx:ctx()) -> {ok, openapi_verfahrensdokumentation:openapi_verfahrensdokumentation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_verfahrensdokumentation(Ctx) ->
    get_verfahrensdokumentation(Ctx, #{}).

-spec get_verfahrensdokumentation(ctx:ctx(), maps:map()) -> {ok, openapi_verfahrensdokumentation:openapi_verfahrensdokumentation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_verfahrensdokumentation(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/verfahrensdokumentation"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec run_dunning_api(ctx:ctx()) -> {ok, openapi_dunning_result:openapi_dunning_result(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
run_dunning_api(Ctx) ->
    run_dunning_api(Ctx, #{}).

-spec run_dunning_api(ctx:ctx(), maps:map()) -> {ok, openapi_dunning_result:openapi_dunning_result(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
run_dunning_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/dunning"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


