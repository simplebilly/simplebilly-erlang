-module(openapi_shipping_api).

-export([get_credentials_api/1, get_credentials_api/2,
         get_rates_api/2, get_rates_api/3,
         list_providers_api/1, list_providers_api/2,
         save_credentials_api/2, save_credentials_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_credentials_api(ctx:ctx()) -> {ok, openapi_shipping_credentials:openapi_shipping_credentials(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_credentials_api(Ctx) ->
    get_credentials_api(Ctx, #{}).

-spec get_credentials_api(ctx:ctx(), maps:map()) -> {ok, openapi_shipping_credentials:openapi_shipping_credentials(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_credentials_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping/credentials"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_rates_api(ctx:ctx(), openapi_rate_request:openapi_rate_request()) -> {ok, openapi_rate_response:openapi_rate_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_rates_api(Ctx, OpenapiRateRequest) ->
    get_rates_api(Ctx, OpenapiRateRequest, #{}).

-spec get_rates_api(ctx:ctx(), openapi_rate_request:openapi_rate_request(), maps:map()) -> {ok, openapi_rate_response:openapi_rate_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_rates_api(Ctx, OpenapiRateRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shipping/rates"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRateRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_providers_api(ctx:ctx()) -> {ok, [openapi_provider_info:openapi_provider_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_providers_api(Ctx) ->
    list_providers_api(Ctx, #{}).

-spec list_providers_api(ctx:ctx(), maps:map()) -> {ok, [openapi_provider_info:openapi_provider_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_providers_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/shipping/providers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec save_credentials_api(ctx:ctx(), openapi_shipping_credentials:openapi_shipping_credentials()) -> {ok, openapi_shipping_credentials:openapi_shipping_credentials(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
save_credentials_api(Ctx, OpenapiShippingCredentials) ->
    save_credentials_api(Ctx, OpenapiShippingCredentials, #{}).

-spec save_credentials_api(ctx:ctx(), openapi_shipping_credentials:openapi_shipping_credentials(), maps:map()) -> {ok, openapi_shipping_credentials:openapi_shipping_credentials(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
save_credentials_api(Ctx, OpenapiShippingCredentials, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/shipping/credentials"],
    QS = [],
    Headers = [],
    Body1 = OpenapiShippingCredentials,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


