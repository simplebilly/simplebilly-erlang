-module(openapi_ebilanz_api).

-export([ebilanz_report_api/1, ebilanz_report_api/2,
         ebilanz_xbrl_export_api/1, ebilanz_xbrl_export_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec ebilanz_report_api(ctx:ctx()) -> {ok, openapi_e_bilanz_report:openapi_e_bilanz_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ebilanz_report_api(Ctx) ->
    ebilanz_report_api(Ctx, #{}).

-spec ebilanz_report_api(ctx:ctx(), maps:map()) -> {ok, openapi_e_bilanz_report:openapi_e_bilanz_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ebilanz_report_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/ebilanz"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'date_from', 'date_to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec ebilanz_xbrl_export_api(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ebilanz_xbrl_export_api(Ctx) ->
    ebilanz_xbrl_export_api(Ctx, #{}).

-spec ebilanz_xbrl_export_api(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
ebilanz_xbrl_export_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/ebilanz/xbrl"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year', 'date_from', 'date_to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


