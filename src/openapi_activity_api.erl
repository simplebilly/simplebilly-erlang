-module(openapi_activity_api).

-export([create_activity/2, create_activity/3,
         delete_activity/2, delete_activity/3,
         get_activity/2, get_activity/3,
         list_activities/1, list_activities/2,
         update_activity/3, update_activity/4,
         update_activity_status/3, update_activity_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_activity(ctx:ctx(), openapi_activity:openapi_activity()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_activity(Ctx, OpenapiActivity) ->
    create_activity(Ctx, OpenapiActivity, #{}).

-spec create_activity(ctx:ctx(), openapi_activity:openapi_activity(), maps:map()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_activity(Ctx, OpenapiActivity, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/activities"],
    QS = [],
    Headers = [],
    Body1 = OpenapiActivity,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_activity(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_activity(Ctx, ActivityId) ->
    delete_activity(Ctx, ActivityId, #{}).

-spec delete_activity(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_activity(Ctx, ActivityId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/activities/", ActivityId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_activity(ctx:ctx(), binary()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_activity(Ctx, ActivityId) ->
    get_activity(Ctx, ActivityId, #{}).

-spec get_activity(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_activity(Ctx, ActivityId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/activities/", ActivityId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_activities(ctx:ctx()) -> {ok, [openapi_activity:openapi_activity()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_activities(Ctx) ->
    list_activities(Ctx, #{}).

-spec list_activities(ctx:ctx(), maps:map()) -> {ok, [openapi_activity:openapi_activity()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_activities(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/activities/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'contactId', 'activityType', 'status', 'assignedTo', 'overdueOnly'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_activity(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_activity(Ctx, ActivityId, Body) ->
    update_activity(Ctx, ActivityId, Body, #{}).

-spec update_activity(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_activity(Ctx, ActivityId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/activities/", ActivityId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_activity_status(ctx:ctx(), binary(), openapi_activity_status_update:openapi_activity_status_update()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_activity_status(Ctx, ActivityId, OpenapiActivityStatusUpdate) ->
    update_activity_status(Ctx, ActivityId, OpenapiActivityStatusUpdate, #{}).

-spec update_activity_status(ctx:ctx(), binary(), openapi_activity_status_update:openapi_activity_status_update(), maps:map()) -> {ok, openapi_activity:openapi_activity(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_activity_status(Ctx, ActivityId, OpenapiActivityStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/activities/", ActivityId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiActivityStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


