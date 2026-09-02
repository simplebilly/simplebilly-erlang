-module(openapi_marketplace_api_api).

-export([create_connection_api/2, create_connection_api/3,
         delete_connection_api/2, delete_connection_api/3,
         get_connection_api/2, get_connection_api/3,
         get_sync_direction_api/2, get_sync_direction_api/3,
         get_sync_logs_api/2, get_sync_logs_api/3,
         list_connections_api/1, list_connections_api/2,
         list_platforms_api/1, list_platforms_api/2,
         oauth_authorize_api/2, oauth_authorize_api/3,
         oauth_callback_api/2, oauth_callback_api/3,
         trigger_sync_api/2, trigger_sync_api/3,
         update_connection_api/3, update_connection_api/4,
         update_sync_direction_api/3, update_sync_direction_api/4,
         webhook_receiver_api/3, webhook_receiver_api/4]).

-define(BASE_URL, <<"">>).

%% @doc Create a new connection (for API-key based platforms)
%% 
-spec create_connection_api(ctx:ctx(), openapi_create_connection_request:openapi_create_connection_request()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_connection_api(Ctx, OpenapiCreateConnectionRequest) ->
    create_connection_api(Ctx, OpenapiCreateConnectionRequest, #{}).

-spec create_connection_api(ctx:ctx(), openapi_create_connection_request:openapi_create_connection_request(), maps:map()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_connection_api(Ctx, OpenapiCreateConnectionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/marketplace/connections"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateConnectionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Soft-delete a connection
%% 
-spec delete_connection_api(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_connection_api(Ctx, ConnectionId) ->
    delete_connection_api(Ctx, ConnectionId, #{}).

-spec delete_connection_api(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_connection_api(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a single connection
%% 
-spec get_connection_api(ctx:ctx(), binary()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_connection_api(Ctx, ConnectionId) ->
    get_connection_api(Ctx, ConnectionId, #{}).

-spec get_connection_api(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_connection_api(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get current sync direction configuration for a connection
%% 
-spec get_sync_direction_api(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_sync_direction_api(Ctx, ConnectionId) ->
    get_sync_direction_api(Ctx, ConnectionId, #{}).

-spec get_sync_direction_api(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_sync_direction_api(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, "/directions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sync logs for a connection
%% 
-spec get_sync_logs_api(ctx:ctx(), binary()) -> {ok, [openapi_sync_log:openapi_sync_log()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_sync_logs_api(Ctx, ConnectionId) ->
    get_sync_logs_api(Ctx, ConnectionId, #{}).

-spec get_sync_logs_api(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_sync_log:openapi_sync_log()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_sync_logs_api(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, "/logs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List connections for the current tenant
%% 
-spec list_connections_api(ctx:ctx()) -> {ok, [openapi_marketplace_connection:openapi_marketplace_connection()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_connections_api(Ctx) ->
    list_connections_api(Ctx, #{}).

-spec list_connections_api(ctx:ctx(), maps:map()) -> {ok, [openapi_marketplace_connection:openapi_marketplace_connection()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_connections_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/marketplace/connections"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all supported platforms
%% 
-spec list_platforms_api(ctx:ctx()) -> {ok, [openapi_platform_info:openapi_platform_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_platforms_api(Ctx) ->
    list_platforms_api(Ctx, #{}).

-spec list_platforms_api(ctx:ctx(), maps:map()) -> {ok, [openapi_platform_info:openapi_platform_info()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_platforms_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/marketplace/platforms"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc OAuth: initiate authorization flow
%% 
-spec oauth_authorize_api(ctx:ctx(), openapi_o_auth_authorize_request:openapi_o_auth_authorize_request()) -> {ok, openapi_o_auth_authorize_response:openapi_o_auth_authorize_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_authorize_api(Ctx, OpenapiOAuthAuthorizeRequest) ->
    oauth_authorize_api(Ctx, OpenapiOAuthAuthorizeRequest, #{}).

-spec oauth_authorize_api(ctx:ctx(), openapi_o_auth_authorize_request:openapi_o_auth_authorize_request(), maps:map()) -> {ok, openapi_o_auth_authorize_response:openapi_o_auth_authorize_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_authorize_api(Ctx, OpenapiOAuthAuthorizeRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/marketplace/oauth/authorize"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOAuthAuthorizeRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc OAuth: handle callback after authorization
%% 
-spec oauth_callback_api(ctx:ctx(), openapi_o_auth_callback_request:openapi_o_auth_callback_request()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_callback_api(Ctx, OpenapiOAuthCallbackRequest) ->
    oauth_callback_api(Ctx, OpenapiOAuthCallbackRequest, #{}).

-spec oauth_callback_api(ctx:ctx(), openapi_o_auth_callback_request:openapi_o_auth_callback_request(), maps:map()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
oauth_callback_api(Ctx, OpenapiOAuthCallbackRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/marketplace/oauth/callback"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOAuthCallbackRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Trigger sync for a connection
%% 
-spec trigger_sync_api(ctx:ctx(), binary()) -> {ok, openapi_sync_summary:openapi_sync_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
trigger_sync_api(Ctx, ConnectionId) ->
    trigger_sync_api(Ctx, ConnectionId, #{}).

-spec trigger_sync_api(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sync_summary:openapi_sync_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
trigger_sync_api(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, "/sync"],
    QS = lists:flatten([])++openapi_utils:optional_params(['sync_type', 'direction'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a connection
%% 
-spec update_connection_api(ctx:ctx(), binary(), openapi_update_connection_request:openapi_update_connection_request()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_connection_api(Ctx, ConnectionId, OpenapiUpdateConnectionRequest) ->
    update_connection_api(Ctx, ConnectionId, OpenapiUpdateConnectionRequest, #{}).

-spec update_connection_api(ctx:ctx(), binary(), openapi_update_connection_request:openapi_update_connection_request(), maps:map()) -> {ok, openapi_marketplace_connection:openapi_marketplace_connection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_connection_api(Ctx, ConnectionId, OpenapiUpdateConnectionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateConnectionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update per-entity sync direction configuration for a connection
%% 
-spec update_sync_direction_api(ctx:ctx(), binary(), openapi_update_sync_direction_request:openapi_update_sync_direction_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_sync_direction_api(Ctx, ConnectionId, OpenapiUpdateSyncDirectionRequest) ->
    update_sync_direction_api(Ctx, ConnectionId, OpenapiUpdateSyncDirectionRequest, #{}).

-spec update_sync_direction_api(ctx:ctx(), binary(), openapi_update_sync_direction_request:openapi_update_sync_direction_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_sync_direction_api(Ctx, ConnectionId, OpenapiUpdateSyncDirectionRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/marketplace/connections/", ConnectionId, "/directions"],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateSyncDirectionRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Webhook receiver
%% 
-spec webhook_receiver_api(ctx:ctx(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
webhook_receiver_api(Ctx, Platform, ConnectionId) ->
    webhook_receiver_api(Ctx, Platform, ConnectionId, #{}).

-spec webhook_receiver_api(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
webhook_receiver_api(Ctx, Platform, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/marketplace/webhook/", Platform, "/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


