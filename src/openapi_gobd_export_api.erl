-module(openapi_gobd_export_api).

-export([buchhalter_csv_api/3, buchhalter_csv_api/4,
         gobd_export_api/2, gobd_export_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec buchhalter_csv_api(ctx:ctx(), binary(), binary()) -> {ok, openapi_go_bd_export_response:openapi_go_bd_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
buchhalter_csv_api(Ctx, DateFrom, DateTo) ->
    buchhalter_csv_api(Ctx, DateFrom, DateTo, #{}).

-spec buchhalter_csv_api(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_go_bd_export_response:openapi_go_bd_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
buchhalter_csv_api(Ctx, DateFrom, DateTo, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/buchhalter-csv"],
    QS = lists:flatten([{<<"date_from">>, DateFrom}, {<<"date_to">>, DateTo}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc GoBD/GDPdU export. Default: ZIP archive (`index.xml` + CSV tables, IDEA format). `?format=csv` returns the legacy single-journal CSV as JSON.
%% 
-spec gobd_export_api(ctx:ctx(), integer()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gobd_export_api(Ctx, Year) ->
    gobd_export_api(Ctx, Year, #{}).

-spec gobd_export_api(ctx:ctx(), integer(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
gobd_export_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/gobd"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params(['format'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


