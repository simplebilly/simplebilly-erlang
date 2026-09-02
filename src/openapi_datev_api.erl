-module(openapi_datev_api).

-export([datev_export_api/1, datev_export_api/2,
         datev_preview_api/1, datev_preview_api/2]).

-define(BASE_URL, <<"">>).

%% @doc Export bookkeeping data as DATEV CSV
%% 
-spec datev_export_api(ctx:ctx()) -> {ok, openapi_datev_export_response:openapi_datev_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
datev_export_api(Ctx) ->
    datev_export_api(Ctx, #{}).

-spec datev_export_api(ctx:ctx(), maps:map()) -> {ok, openapi_datev_export_response:openapi_datev_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
datev_export_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/datev/export"],
    QS = lists:flatten([])++openapi_utils:optional_params(['account_schema', 'date_from', 'date_to', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Exported_datev_bookings: returns formed bookings for review
%% 
-spec datev_preview_api(ctx:ctx()) -> {ok, [openapi_datev_booking_preview:openapi_datev_booking_preview()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
datev_preview_api(Ctx) ->
    datev_preview_api(Ctx, #{}).

-spec datev_preview_api(ctx:ctx(), maps:map()) -> {ok, [openapi_datev_booking_preview:openapi_datev_booking_preview()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
datev_preview_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/datev/preview"],
    QS = lists:flatten([])++openapi_utils:optional_params(['account_schema', 'date_from', 'date_to', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


