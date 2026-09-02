-module(openapi_suitability_api).

-export([shipping_suitability_api/2, shipping_suitability_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec shipping_suitability_api(ctx:ctx(), openapi_suitability_request:openapi_suitability_request()) -> {ok, openapi_suitability_result:openapi_suitability_result(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
shipping_suitability_api(Ctx, OpenapiSuitabilityRequest) ->
    shipping_suitability_api(Ctx, OpenapiSuitabilityRequest, #{}).

-spec shipping_suitability_api(ctx:ctx(), openapi_suitability_request:openapi_suitability_request(), maps:map()) -> {ok, openapi_suitability_result:openapi_suitability_result(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
shipping_suitability_api(Ctx, OpenapiSuitabilityRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shipping/suitability"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSuitabilityRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


