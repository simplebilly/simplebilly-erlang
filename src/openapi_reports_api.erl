-module(openapi_reports_api).

-export([bilanz_report_api/1, bilanz_report_api/2,
         guv_report_api/1, guv_report_api/2,
         kontenansicht_report_api/1, kontenansicht_report_api/2,
         umsatzsteuer_report_api/1, umsatzsteuer_report_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Bilanz (Balance Sheet)
%% 
-spec bilanz_report_api(ctx:ctx()) -> {ok, openapi_bilanz_report:openapi_bilanz_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bilanz_report_api(Ctx) ->
    bilanz_report_api(Ctx, #{}).

-spec bilanz_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_bilanz_report:openapi_bilanz_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bilanz_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/reports/bilanz"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'month', 'date_from', 'date_to', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gewinn- und Verlustrechnung (P&L statement)
%% 
-spec guv_report_api(ctx:ctx()) -> {ok, openapi_gu_v_report:openapi_gu_v_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
guv_report_api(Ctx) ->
    guv_report_api(Ctx, #{}).

-spec guv_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_gu_v_report:openapi_gu_v_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
guv_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/reports/guv"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'month', 'date_from', 'date_to', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Kontenansicht (Account Overview)
%% 
-spec kontenansicht_report_api(ctx:ctx()) -> {ok, openapi_konto_report:openapi_konto_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
kontenansicht_report_api(Ctx) ->
    kontenansicht_report_api(Ctx, #{}).

-spec kontenansicht_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_konto_report:openapi_konto_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
kontenansicht_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/reports/kontenansicht"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'month', 'date_from', 'date_to', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Umsatzsteuer-Voranmeldung (VAT report)
%% 
-spec umsatzsteuer_report_api(ctx:ctx()) -> {ok, openapi_umsatzsteuer_report:openapi_umsatzsteuer_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
umsatzsteuer_report_api(Ctx) ->
    umsatzsteuer_report_api(Ctx, #{}).

-spec umsatzsteuer_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_umsatzsteuer_report:openapi_umsatzsteuer_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
umsatzsteuer_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/reports/umsatzsteuer"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'month', 'date_from', 'date_to', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


