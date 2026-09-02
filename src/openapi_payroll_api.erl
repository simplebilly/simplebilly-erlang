-module(openapi_payroll_api).

-export([payroll_approve/2, payroll_approve/3,
         payroll_autopay/3, payroll_autopay/4,
         payroll_calculate/2, payroll_calculate/3,
         payroll_create/2, payroll_create/3,
         payroll_delete/2, payroll_delete/3,
         payroll_elster_export/2, payroll_elster_export/3,
         payroll_email/2, payroll_email/3,
         payroll_entry_pdf/3, payroll_entry_pdf/4,
         payroll_get/2, payroll_get/3,
         payroll_list/1, payroll_list/2,
         payroll_pay/3, payroll_pay/4,
         payroll_pdf/2, payroll_pdf/3,
         payroll_summary/2, payroll_summary/3,
         payroll_sv_meldungen/2, payroll_sv_meldungen/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec payroll_approve(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_approve(Ctx, Id) ->
    payroll_approve(Ctx, Id, #{}).

-spec payroll_approve(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_approve(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/approve"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_autopay(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_autopay(Ctx, Id) ->
    payroll_autopay(Ctx, Id, #{}).

-spec payroll_autopay(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_autopay(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/autopay"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_calculate(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_calculate(Ctx, Id) ->
    payroll_calculate(Ctx, Id, #{}).

-spec payroll_calculate(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_calculate(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/calculate"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_create(ctx:ctx(), openapi_payroll_create_payload:openapi_payroll_create_payload()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_create(Ctx, OpenapiPayrollCreatePayload) ->
    payroll_create(Ctx, OpenapiPayrollCreatePayload, #{}).

-spec payroll_create(ctx:ctx(), openapi_payroll_create_payload:openapi_payroll_create_payload(), maps:map()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_create(Ctx, OpenapiPayrollCreatePayload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPayrollCreatePayload,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_delete(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_delete(Ctx, Id) ->
    payroll_delete(Ctx, Id, #{}).

-spec payroll_delete(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_elster_export(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_elster_export(Ctx, Id) ->
    payroll_elster_export(Ctx, Id, #{}).

-spec payroll_elster_export(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_elster_export(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/elster-export"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_email(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_email(Ctx, Id) ->
    payroll_email(Ctx, Id, #{}).

-spec payroll_email(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_entry_pdf(ctx:ctx(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_entry_pdf(Ctx, Id, EntryId) ->
    payroll_entry_pdf(Ctx, Id, EntryId, #{}).

-spec payroll_entry_pdf(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_entry_pdf(Ctx, Id, EntryId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/entries/", EntryId, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_get(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_get(Ctx, Id) ->
    payroll_get(Ctx, Id, #{}).

-spec payroll_get(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_list(ctx:ctx()) -> {ok, [openapi_payroll_run_api:openapi_payroll_run_api()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_list(Ctx) ->
    payroll_list(Ctx, #{}).

-spec payroll_list(ctx:ctx(), maps:map()) -> {ok, [openapi_payroll_run_api:openapi_payroll_run_api()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payroll"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_pay(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_payroll_pay_payload:openapi_payroll_pay_payload()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_pay(Ctx, Id, OpenapiPayrollPayPayload) ->
    payroll_pay(Ctx, Id, OpenapiPayrollPayPayload, #{}).

-spec payroll_pay(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_payroll_pay_payload:openapi_payroll_pay_payload(), maps:map()) -> {ok, openapi_payroll_run_api:openapi_payroll_run_api(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_pay(Ctx, Id, OpenapiPayrollPayPayload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/pay"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPayrollPayPayload,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_pdf(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_pdf(Ctx, Id) ->
    payroll_pdf(Ctx, Id, #{}).

-spec payroll_pdf(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_pdf(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_summary(ctx:ctx(), integer()) -> {ok, openapi_yearly_payroll_summary:openapi_yearly_payroll_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_summary(Ctx, Year) ->
    payroll_summary(Ctx, Year, #{}).

-spec payroll_summary(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_yearly_payroll_summary:openapi_yearly_payroll_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_summary(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payroll/summary/", Year, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec payroll_sv_meldungen(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_sv_meldungen(Ctx, Id) ->
    payroll_sv_meldungen(Ctx, Id, #{}).

-spec payroll_sv_meldungen(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
payroll_sv_meldungen(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payroll/", Id, "/sv-meldungen"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


