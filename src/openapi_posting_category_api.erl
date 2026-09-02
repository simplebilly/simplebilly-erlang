-module(openapi_posting_category_api).

-export([create_posting_category/2, create_posting_category/3,
         delete_posting_category/2, delete_posting_category/3,
         list_posting_categories/1, list_posting_categories/2,
         seed_posting_categories/2, seed_posting_categories/3,
         update_posting_category/3, update_posting_category/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_posting_category(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_posting_category:openapi_posting_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_posting_category(Ctx, Body) ->
    create_posting_category(Ctx, Body, #{}).

-spec create_posting_category(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_posting_category:openapi_posting_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_posting_category(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/posting-categories"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_posting_category(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_posting_category(Ctx, CategoryId) ->
    delete_posting_category(Ctx, CategoryId, #{}).

-spec delete_posting_category(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_posting_category(Ctx, CategoryId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/posting-categories/", CategoryId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_posting_categories(ctx:ctx()) -> {ok, [openapi_posting_category:openapi_posting_category()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_posting_categories(Ctx) ->
    list_posting_categories(Ctx, #{}).

-spec list_posting_categories(ctx:ctx(), maps:map()) -> {ok, [openapi_posting_category:openapi_posting_category()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_posting_categories(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/posting-categories"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec seed_posting_categories(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
seed_posting_categories(Ctx, SkrVersion) ->
    seed_posting_categories(Ctx, SkrVersion, #{}).

-spec seed_posting_categories(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
seed_posting_categories(Ctx, SkrVersion, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/posting-categories/seed/", SkrVersion, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_posting_category(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_posting_category:openapi_posting_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_posting_category(Ctx, CategoryId, Body) ->
    update_posting_category(Ctx, CategoryId, Body, #{}).

-spec update_posting_category(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_posting_category:openapi_posting_category(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_posting_category(Ctx, CategoryId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/posting-categories/", CategoryId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


