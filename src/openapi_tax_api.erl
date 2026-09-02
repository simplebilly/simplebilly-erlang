-module(openapi_tax_api).

-export([create_tax_rate/2, create_tax_rate/3,
         delete_tax_rate/2, delete_tax_rate/3,
         list_tax_rates/1, list_tax_rates/2,
         update_tax_rate/3, update_tax_rate/4]).

-define(BASE_URL, <<"">>).

%% @doc Create a tax rate (`admin:settings`).
%% 
-spec create_tax_rate(ctx:ctx(), openapi_tax_rate_create:openapi_tax_rate_create()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_tax_rate(Ctx, OpenapiTaxRateCreate) ->
    create_tax_rate(Ctx, OpenapiTaxRateCreate, #{}).

-spec create_tax_rate(ctx:ctx(), openapi_tax_rate_create:openapi_tax_rate_create(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_tax_rate(Ctx, OpenapiTaxRateCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/tax-rates"],
    QS = [],
    Headers = [],
    Body1 = OpenapiTaxRateCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a tax rate by id (`admin:settings`).
%% 
-spec delete_tax_rate(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_tax_rate(Ctx, Id) ->
    delete_tax_rate(Ctx, Id, #{}).

-spec delete_tax_rate(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_tax_rate(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/tax-rates/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List the calling tenant's tax rates.
%% 
-spec list_tax_rates(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_tax_rates(Ctx) ->
    list_tax_rates(Ctx, #{}).

-spec list_tax_rates(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_tax_rates(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/tax-rates"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a tax rate by id (`admin:settings`). Replaces all body fields.
%% 
-spec update_tax_rate(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_tax_rate_create:openapi_tax_rate_create()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_tax_rate(Ctx, Id, OpenapiTaxRateCreate) ->
    update_tax_rate(Ctx, Id, OpenapiTaxRateCreate, #{}).

-spec update_tax_rate(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_tax_rate_create:openapi_tax_rate_create(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_tax_rate(Ctx, Id, OpenapiTaxRateCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/tax-rates/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiTaxRateCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


