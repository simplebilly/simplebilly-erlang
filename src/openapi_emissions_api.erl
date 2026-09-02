-module(openapi_emissions_api).

-export([create_emission_entry_api/2, create_emission_entry_api/3,
         create_emission_target_api/2, create_emission_target_api/3,
         delete_emission_entry_api/2, delete_emission_entry_api/3,
         delete_emission_target_api/2, delete_emission_target_api/3,
         emissions_entries_api/2, emissions_entries_api/3,
         emissions_export_api/2, emissions_export_api/3,
         emissions_factors_api/1, emissions_factors_api/2,
         emissions_report_api/2, emissions_report_api/3,
         emissions_targets_api/1, emissions_targets_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_emission_entry_api(ctx:ctx(), openapi_create_emission_entry:openapi_create_emission_entry()) -> {ok, openapi_emission_entry:openapi_emission_entry(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_emission_entry_api(Ctx, OpenapiCreateEmissionEntry) ->
    create_emission_entry_api(Ctx, OpenapiCreateEmissionEntry, #{}).

-spec create_emission_entry_api(ctx:ctx(), openapi_create_emission_entry:openapi_create_emission_entry(), maps:map()) -> {ok, openapi_emission_entry:openapi_emission_entry(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_emission_entry_api(Ctx, OpenapiCreateEmissionEntry, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/entries"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateEmissionEntry,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_emission_target_api(ctx:ctx(), openapi_create_emission_target:openapi_create_emission_target()) -> {ok, openapi_emission_target:openapi_emission_target(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_emission_target_api(Ctx, OpenapiCreateEmissionTarget) ->
    create_emission_target_api(Ctx, OpenapiCreateEmissionTarget, #{}).

-spec create_emission_target_api(ctx:ctx(), openapi_create_emission_target:openapi_create_emission_target(), maps:map()) -> {ok, openapi_emission_target:openapi_emission_target(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_emission_target_api(Ctx, OpenapiCreateEmissionTarget, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/targets"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateEmissionTarget,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_emission_entry_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_emission_entry_api(Ctx, Id) ->
    delete_emission_entry_api(Ctx, Id, #{}).

-spec delete_emission_entry_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_emission_entry_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/entries/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_emission_target_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_emission_target_api(Ctx, Id) ->
    delete_emission_target_api(Ctx, Id, #{}).

-spec delete_emission_target_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_emission_target_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/targets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec emissions_entries_api(ctx:ctx(), integer()) -> {ok, [openapi_emission_entry:openapi_emission_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_entries_api(Ctx, Year) ->
    emissions_entries_api(Ctx, Year, #{}).

-spec emissions_entries_api(ctx:ctx(), integer(), maps:map()) -> {ok, [openapi_emission_entry:openapi_emission_entry()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_entries_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/entries"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec emissions_export_api(ctx:ctx(), integer()) -> {ok, openapi_emissions_export_response:openapi_emissions_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_export_api(Ctx, Year) ->
    emissions_export_api(Ctx, Year, #{}).

-spec emissions_export_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_emissions_export_response:openapi_emissions_export_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_export_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/export"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec emissions_factors_api(ctx:ctx()) -> {ok, [openapi_emission_factor_response:openapi_emission_factor_response()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_factors_api(Ctx) ->
    emissions_factors_api(Ctx, #{}).

-spec emissions_factors_api(ctx:ctx(), maps:map()) -> {ok, [openapi_emission_factor_response:openapi_emission_factor_response()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_factors_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/factors"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec emissions_report_api(ctx:ctx(), integer()) -> {ok, openapi_emissions_report:openapi_emissions_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_report_api(Ctx, Year) ->
    emissions_report_api(Ctx, Year, #{}).

-spec emissions_report_api(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_emissions_report:openapi_emissions_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_report_api(Ctx, Year, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/report"],
    QS = lists:flatten([{<<"year">>, Year}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec emissions_targets_api(ctx:ctx()) -> {ok, [openapi_emission_target:openapi_emission_target()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_targets_api(Ctx) ->
    emissions_targets_api(Ctx, #{}).

-spec emissions_targets_api(ctx:ctx(), maps:map()) -> {ok, [openapi_emission_target:openapi_emission_target()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
emissions_targets_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/emissions/targets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


