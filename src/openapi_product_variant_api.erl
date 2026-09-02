-module(openapi_product_variant_api).

-export([create_product_variant/2, create_product_variant/3,
         delete_product_variant/2, delete_product_variant/3,
         generate_product_variants/2, generate_product_variants/3,
         get_product_variant/2, get_product_variant/3,
         list_product_variants/1, list_product_variants/2,
         update_product_variant/3, update_product_variant/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_product_variant(ctx:ctx(), openapi_product_variant:openapi_product_variant()) -> {ok, openapi_product_variant:openapi_product_variant(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_variant(Ctx, OpenapiProductVariant) ->
    create_product_variant(Ctx, OpenapiProductVariant, #{}).

-spec create_product_variant(ctx:ctx(), openapi_product_variant:openapi_product_variant(), maps:map()) -> {ok, openapi_product_variant:openapi_product_variant(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_product_variant(Ctx, OpenapiProductVariant, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/product-variants"],
    QS = [],
    Headers = [],
    Body1 = OpenapiProductVariant,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_product_variant(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_variant(Ctx, VariantId) ->
    delete_product_variant(Ctx, VariantId, #{}).

-spec delete_product_variant(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_product_variant(Ctx, VariantId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/product-variants/", VariantId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec generate_product_variants(ctx:ctx(), openapi_generate_variants_request:openapi_generate_variants_request()) -> {ok, [openapi_product_variant:openapi_product_variant()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_product_variants(Ctx, OpenapiGenerateVariantsRequest) ->
    generate_product_variants(Ctx, OpenapiGenerateVariantsRequest, #{}).

-spec generate_product_variants(ctx:ctx(), openapi_generate_variants_request:openapi_generate_variants_request(), maps:map()) -> {ok, [openapi_product_variant:openapi_product_variant()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_product_variants(Ctx, OpenapiGenerateVariantsRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/product-variants/generate"],
    QS = [],
    Headers = [],
    Body1 = OpenapiGenerateVariantsRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_product_variant(ctx:ctx(), binary()) -> {ok, openapi_product_variant:openapi_product_variant(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_variant(Ctx, VariantId) ->
    get_product_variant(Ctx, VariantId, #{}).

-spec get_product_variant(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_product_variant:openapi_product_variant(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_product_variant(Ctx, VariantId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/product-variants/", VariantId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_product_variants(ctx:ctx()) -> {ok, [openapi_product_variant:openapi_product_variant()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_product_variants(Ctx) ->
    list_product_variants(Ctx, #{}).

-spec list_product_variants(ctx:ctx(), maps:map()) -> {ok, [openapi_product_variant:openapi_product_variant()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_product_variants(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/product-variants/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'product_id', 'is_active'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_product_variant(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_product_variant:openapi_product_variant(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_variant(Ctx, VariantId, Body) ->
    update_product_variant(Ctx, VariantId, Body, #{}).

-spec update_product_variant(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_product_variant:openapi_product_variant(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_product_variant(Ctx, VariantId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/product-variants/", VariantId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


