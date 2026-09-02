-module(openapi_support_channel_api).

-export([create_channel_api/2, create_channel_api/3,
         delete_channel_api/2, delete_channel_api/3,
         list_channels_api/1, list_channels_api/2,
         update_channel_api/3, update_channel_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_channel_api(ctx:ctx(), openapi_create_channel_dto:openapi_create_channel_dto()) -> {ok, openapi_support_channel:openapi_support_channel(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_channel_api(Ctx, OpenapiCreateChannelDto) ->
    create_channel_api(Ctx, OpenapiCreateChannelDto, #{}).

-spec create_channel_api(ctx:ctx(), openapi_create_channel_dto:openapi_create_channel_dto(), maps:map()) -> {ok, openapi_support_channel:openapi_support_channel(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_channel_api(Ctx, OpenapiCreateChannelDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/support/channels"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateChannelDto,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_channel_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_channel_api(Ctx, ChannelId) ->
    delete_channel_api(Ctx, ChannelId, #{}).

-spec delete_channel_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_channel_api(Ctx, ChannelId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/support/channels/", ChannelId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_channels_api(ctx:ctx()) -> {ok, [openapi_support_channel:openapi_support_channel()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_channels_api(Ctx) ->
    list_channels_api(Ctx, #{}).

-spec list_channels_api(ctx:ctx(), maps:map()) -> {ok, [openapi_support_channel:openapi_support_channel()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_channels_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/support/channels"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_channel_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_update_channel_dto:openapi_update_channel_dto()) -> {ok, openapi_support_channel:openapi_support_channel(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_channel_api(Ctx, ChannelId, OpenapiUpdateChannelDto) ->
    update_channel_api(Ctx, ChannelId, OpenapiUpdateChannelDto, #{}).

-spec update_channel_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_update_channel_dto:openapi_update_channel_dto(), maps:map()) -> {ok, openapi_support_channel:openapi_support_channel(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_channel_api(Ctx, ChannelId, OpenapiUpdateChannelDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/support/channels/", ChannelId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiUpdateChannelDto,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


