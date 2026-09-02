-module(openapi_supplier_condition_api).

-export([create_supplier_condition/2, create_supplier_condition/3,
         delete_supplier_condition/2, delete_supplier_condition/3,
         get_supplier_condition/2, get_supplier_condition/3,
         list_supplier_conditions/1, list_supplier_conditions/2,
         update_supplier_condition/3, update_supplier_condition/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_supplier_condition(ctx:ctx(), openapi_supplier_condition_create:openapi_supplier_condition_create()) -> {ok, openapi_supplier_condition:openapi_supplier_condition(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_supplier_condition(Ctx, OpenapiSupplierConditionCreate) ->
    create_supplier_condition(Ctx, OpenapiSupplierConditionCreate, #{}).

-spec create_supplier_condition(ctx:ctx(), openapi_supplier_condition_create:openapi_supplier_condition_create(), maps:map()) -> {ok, openapi_supplier_condition:openapi_supplier_condition(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_supplier_condition(Ctx, OpenapiSupplierConditionCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/supplier-conditions"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSupplierConditionCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_supplier_condition(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_supplier_condition(Ctx, SupplierConditionId) ->
    delete_supplier_condition(Ctx, SupplierConditionId, #{}).

-spec delete_supplier_condition(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_supplier_condition(Ctx, SupplierConditionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/supplier-conditions/", SupplierConditionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_supplier_condition(ctx:ctx(), binary()) -> {ok, openapi_supplier_condition:openapi_supplier_condition(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_supplier_condition(Ctx, SupplierConditionId) ->
    get_supplier_condition(Ctx, SupplierConditionId, #{}).

-spec get_supplier_condition(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_supplier_condition:openapi_supplier_condition(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_supplier_condition(Ctx, SupplierConditionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/supplier-conditions/", SupplierConditionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_supplier_conditions(ctx:ctx()) -> {ok, [openapi_supplier_condition:openapi_supplier_condition()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_supplier_conditions(Ctx) ->
    list_supplier_conditions(Ctx, #{}).

-spec list_supplier_conditions(ctx:ctx(), maps:map()) -> {ok, [openapi_supplier_condition:openapi_supplier_condition()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_supplier_conditions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/supplier-conditions/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'supplier_contact_id', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_supplier_condition(ctx:ctx(), binary(), openapi_supplier_condition_update:openapi_supplier_condition_update()) -> {ok, openapi_supplier_condition:openapi_supplier_condition(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_supplier_condition(Ctx, SupplierConditionId, OpenapiSupplierConditionUpdate) ->
    update_supplier_condition(Ctx, SupplierConditionId, OpenapiSupplierConditionUpdate, #{}).

-spec update_supplier_condition(ctx:ctx(), binary(), openapi_supplier_condition_update:openapi_supplier_condition_update(), maps:map()) -> {ok, openapi_supplier_condition:openapi_supplier_condition(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_supplier_condition(Ctx, SupplierConditionId, OpenapiSupplierConditionUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/supplier-conditions/", SupplierConditionId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiSupplierConditionUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


