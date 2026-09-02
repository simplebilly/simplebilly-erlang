-module(openapi_customer_api).

-export([create_customer/2, create_customer/3,
         customer_restore/2, customer_restore/3,
         delete_customer/2, delete_customer/3,
         get_customer/2, get_customer/3,
         get_customers/1, get_customers/2,
         update_customer/3, update_customer/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_customer(ctx:ctx(), openapi_customer_create:openapi_customer_create()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_customer(Ctx, OpenapiCustomerCreate) ->
    create_customer(Ctx, OpenapiCustomerCreate, #{}).

-spec create_customer(ctx:ctx(), openapi_customer_create:openapi_customer_create(), maps:map()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_customer(Ctx, OpenapiCustomerCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/customers"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCustomerCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec customer_restore(ctx:ctx(), binary()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
customer_restore(Ctx, CustomerId) ->
    customer_restore(Ctx, CustomerId, #{}).

-spec customer_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
customer_restore(Ctx, CustomerId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/customers/", CustomerId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_customer(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_customer(Ctx, CustomerId) ->
    delete_customer(Ctx, CustomerId, #{}).

-spec delete_customer(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_customer(Ctx, CustomerId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/customers/", CustomerId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_customer(ctx:ctx(), binary()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_customer(Ctx, CustomerId) ->
    get_customer(Ctx, CustomerId, #{}).

-spec get_customer(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_customer(Ctx, CustomerId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/customers/", CustomerId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_customers(ctx:ctx()) -> {ok, [openapi_customer:openapi_customer()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_customers(Ctx) ->
    get_customers(Ctx, #{}).

-spec get_customers(ctx:ctx(), maps:map()) -> {ok, [openapi_customer:openapi_customer()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_customers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/customers/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_customer(ctx:ctx(), binary(), openapi_customer_update:openapi_customer_update()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_customer(Ctx, CustomerId, OpenapiCustomerUpdate) ->
    update_customer(Ctx, CustomerId, OpenapiCustomerUpdate, #{}).

-spec update_customer(ctx:ctx(), binary(), openapi_customer_update:openapi_customer_update(), maps:map()) -> {ok, openapi_customer:openapi_customer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_customer(Ctx, CustomerId, OpenapiCustomerUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/customers/", CustomerId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiCustomerUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


