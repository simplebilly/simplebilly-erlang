-module(openapi_paygap_api).

-export([paygap_auskunft_api/2, paygap_auskunft_api/3,
         paygap_export_api/1, paygap_export_api/2,
         paygap_report_api/1, paygap_report_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec paygap_auskunft_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_pay_gap_info_response:openapi_pay_gap_info_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paygap_auskunft_api(Ctx, EmployeeId) ->
    paygap_auskunft_api(Ctx, EmployeeId, #{}).

-spec paygap_auskunft_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_pay_gap_info_response:openapi_pay_gap_info_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paygap_auskunft_api(Ctx, EmployeeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/paygap/auskunft/", EmployeeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec paygap_export_api(ctx:ctx()) -> {ok, openapi_pay_gap_export_response:openapi_pay_gap_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paygap_export_api(Ctx) ->
    paygap_export_api(Ctx, #{}).

-spec paygap_export_api(ctx:ctx(), maps:map()) -> {ok, openapi_pay_gap_export_response:openapi_pay_gap_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paygap_export_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/paygap/export"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec paygap_report_api(ctx:ctx()) -> {ok, openapi_pay_gap_report:openapi_pay_gap_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paygap_report_api(Ctx) ->
    paygap_report_api(Ctx, #{}).

-spec paygap_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_pay_gap_report:openapi_pay_gap_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
paygap_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/paygap/report"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


