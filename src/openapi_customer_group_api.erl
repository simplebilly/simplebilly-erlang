-module(openapi_customer_group_api).

-export([add_group_members/3, add_group_members/4,
         create_customer_group/2, create_customer_group/3,
         delete_customer_group/2, delete_customer_group/3,
         get_customer_group/2, get_customer_group/3,
         list_customer_groups/1, list_customer_groups/2,
         update_customer_group/3, update_customer_group/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec add_group_members(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
add_group_members(Ctx, CustomerGroupId, Body) ->
    add_group_members(Ctx, CustomerGroupId, Body, #{}).

-spec add_group_members(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
add_group_members(Ctx, CustomerGroupId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/customer-groups/", CustomerGroupId, "/members"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_customer_group(ctx:ctx(), openapi_customer_group_create:openapi_customer_group_create()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_customer_group(Ctx, OpenapiCustomerGroupCreate) ->
    create_customer_group(Ctx, OpenapiCustomerGroupCreate, #{}).

-spec create_customer_group(ctx:ctx(), openapi_customer_group_create:openapi_customer_group_create(), maps:map()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_customer_group(Ctx, OpenapiCustomerGroupCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/customer-groups"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCustomerGroupCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_customer_group(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_customer_group(Ctx, CustomerGroupId) ->
    delete_customer_group(Ctx, CustomerGroupId, #{}).

-spec delete_customer_group(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_customer_group(Ctx, CustomerGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/customer-groups/", CustomerGroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_customer_group(ctx:ctx(), binary()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_customer_group(Ctx, CustomerGroupId) ->
    get_customer_group(Ctx, CustomerGroupId, #{}).

-spec get_customer_group(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_customer_group(Ctx, CustomerGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/customer-groups/", CustomerGroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_customer_groups(ctx:ctx()) -> {ok, [openapi_customer_group:openapi_customer_group()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_customer_groups(Ctx) ->
    list_customer_groups(Ctx, #{}).

-spec list_customer_groups(ctx:ctx(), maps:map()) -> {ok, [openapi_customer_group:openapi_customer_group()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_customer_groups(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/customer-groups/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_customer_group(ctx:ctx(), binary(), openapi_customer_group_update:openapi_customer_group_update()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_customer_group(Ctx, CustomerGroupId, OpenapiCustomerGroupUpdate) ->
    update_customer_group(Ctx, CustomerGroupId, OpenapiCustomerGroupUpdate, #{}).

-spec update_customer_group(ctx:ctx(), binary(), openapi_customer_group_update:openapi_customer_group_update(), maps:map()) -> {ok, openapi_customer_group:openapi_customer_group(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_customer_group(Ctx, CustomerGroupId, OpenapiCustomerGroupUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/customer-groups/", CustomerGroupId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiCustomerGroupUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


