-module(openapi_payment_gateway_api).

-export([create_payment_gateway_api/2, create_payment_gateway_api/3,
         delete_payment_gateway_api/2, delete_payment_gateway_api/3,
         list_payment_gateways_api/1, list_payment_gateways_api/2,
         oauth_authorize_api/2, oauth_authorize_api/3,
         oauth_callback_api/2, oauth_callback_api/3,
         update_payment_gateway_api/3, update_payment_gateway_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_payment_gateway_api(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_payment_gateway:openapi_payment_gateway(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_payment_gateway_api(Ctx, Body) ->
    create_payment_gateway_api(Ctx, Body, #{}).

-spec create_payment_gateway_api(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_payment_gateway:openapi_payment_gateway(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_payment_gateway_api(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payment-gateways"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_payment_gateway_api(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_payment_gateway_api(Ctx, GatewayId) ->
    delete_payment_gateway_api(Ctx, GatewayId, #{}).

-spec delete_payment_gateway_api(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_payment_gateway_api(Ctx, GatewayId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/payment-gateways/", GatewayId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_payment_gateways_api(ctx:ctx()) -> {ok, [openapi_payment_gateway:openapi_payment_gateway()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_payment_gateways_api(Ctx) ->
    list_payment_gateways_api(Ctx, #{}).

-spec list_payment_gateways_api(ctx:ctx(), maps:map()) -> {ok, [openapi_payment_gateway:openapi_payment_gateway()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_payment_gateways_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/payment-gateways/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec oauth_authorize_api(ctx:ctx(), openapi_gateway_o_auth_authorize_request:openapi_gateway_o_auth_authorize_request()) -> {ok, openapi_gateway_o_auth_authorize_response:openapi_gateway_o_auth_authorize_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_authorize_api(Ctx, OpenapiGatewayOAuthAuthorizeRequest) ->
    oauth_authorize_api(Ctx, OpenapiGatewayOAuthAuthorizeRequest, #{}).

-spec oauth_authorize_api(ctx:ctx(), openapi_gateway_o_auth_authorize_request:openapi_gateway_o_auth_authorize_request(), maps:map()) -> {ok, openapi_gateway_o_auth_authorize_response:openapi_gateway_o_auth_authorize_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_authorize_api(Ctx, OpenapiGatewayOAuthAuthorizeRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payment-gateways/oauth/authorize"],
    QS = [],
    Headers = [],
    Body1 = OpenapiGatewayOAuthAuthorizeRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec oauth_callback_api(ctx:ctx(), openapi_gateway_o_auth_callback_request:openapi_gateway_o_auth_callback_request()) -> {ok, openapi_payment_gateway:openapi_payment_gateway(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_callback_api(Ctx, OpenapiGatewayOAuthCallbackRequest) ->
    oauth_callback_api(Ctx, OpenapiGatewayOAuthCallbackRequest, #{}).

-spec oauth_callback_api(ctx:ctx(), openapi_gateway_o_auth_callback_request:openapi_gateway_o_auth_callback_request(), maps:map()) -> {ok, openapi_payment_gateway:openapi_payment_gateway(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_callback_api(Ctx, OpenapiGatewayOAuthCallbackRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/payment-gateways/oauth/callback"],
    QS = [],
    Headers = [],
    Body1 = OpenapiGatewayOAuthCallbackRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_payment_gateway_api(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_payment_gateway:openapi_payment_gateway(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_payment_gateway_api(Ctx, GatewayId, Body) ->
    update_payment_gateway_api(Ctx, GatewayId, Body, #{}).

-spec update_payment_gateway_api(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_payment_gateway:openapi_payment_gateway(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_payment_gateway_api(Ctx, GatewayId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/payment-gateways/", GatewayId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


