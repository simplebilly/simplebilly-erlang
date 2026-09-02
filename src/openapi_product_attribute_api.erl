-module(openapi_product_attribute_api).

-export([create_product_attribute/2, create_product_attribute/3,
         delete_product_attribute/2, delete_product_attribute/3,
         get_product_attribute/2, get_product_attribute/3,
         list_product_attributes/1, list_product_attributes/2,
         update_product_attribute/3, update_product_attribute/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_product_attribute(ctx:ctx(), openapi_product_attribute_create:openapi_product_attribute_create()) -> {ok, openapi_product_attribute:openapi_product_attribute(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_attribute(Ctx, OpenapiProductAttributeCreate) ->
    create_product_attribute(Ctx, OpenapiProductAttributeCreate, #{}).

-spec create_product_attribute(ctx:ctx(), openapi_product_attribute_create:openapi_product_attribute_create(), maps:map()) -> {ok, openapi_product_attribute:openapi_product_attribute(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_attribute(Ctx, OpenapiProductAttributeCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/product-attributes"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductAttributeCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_product_attribute(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_attribute(Ctx, AttributeId) ->
    delete_product_attribute(Ctx, AttributeId, #{}).

-spec delete_product_attribute(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_attribute(Ctx, AttributeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/product-attributes/", AttributeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_product_attribute(ctx:ctx(), binary()) -> {ok, openapi_product_attribute:openapi_product_attribute(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_attribute(Ctx, AttributeId) ->
    get_product_attribute(Ctx, AttributeId, #{}).

-spec get_product_attribute(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_product_attribute:openapi_product_attribute(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_attribute(Ctx, AttributeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/product-attributes/", AttributeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_product_attributes(ctx:ctx()) -> {ok, [openapi_product_attribute:openapi_product_attribute()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_product_attributes(Ctx) ->
    list_product_attributes(Ctx, #{}).

-spec list_product_attributes(ctx:ctx(), maps:map()) -> {ok, [openapi_product_attribute:openapi_product_attribute()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_product_attributes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/product-attributes/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'product_id', 'is_filterable', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_product_attribute(ctx:ctx(), binary(), openapi_product_attribute_update:openapi_product_attribute_update()) -> {ok, openapi_product_attribute:openapi_product_attribute(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_attribute(Ctx, AttributeId, OpenapiProductAttributeUpdate) ->
    update_product_attribute(Ctx, AttributeId, OpenapiProductAttributeUpdate, #{}).

-spec update_product_attribute(ctx:ctx(), binary(), openapi_product_attribute_update:openapi_product_attribute_update(), maps:map()) -> {ok, openapi_product_attribute:openapi_product_attribute(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_attribute(Ctx, AttributeId, OpenapiProductAttributeUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/product-attributes/", AttributeId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductAttributeUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


