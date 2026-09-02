-module(openapi_declaration_api).

-export([create_declaration/2, create_declaration/3,
         declaration_restore/2, declaration_restore/3,
         delete_declaration/2, delete_declaration/3,
         get_declaration/2, get_declaration/3,
         get_declarations/1, get_declarations/2,
         update_declaration/3, update_declaration/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_declaration(ctx:ctx(), openapi_declaration_create:openapi_declaration_create()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_declaration(Ctx, OpenapiDeclarationCreate) ->
    create_declaration(Ctx, OpenapiDeclarationCreate, #{}).

-spec create_declaration(ctx:ctx(), openapi_declaration_create:openapi_declaration_create(), maps:map()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_declaration(Ctx, OpenapiDeclarationCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/declarations"],
    QS = [],
    Headers = [],
    Body1 = OpenapiDeclarationCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec declaration_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
declaration_restore(Ctx, Id) ->
    declaration_restore(Ctx, Id, #{}).

-spec declaration_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
declaration_restore(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/declarations/", Id, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_declaration(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_declaration(Ctx, Id) ->
    delete_declaration(Ctx, Id, #{}).

-spec delete_declaration(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_declaration(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/declarations/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_declaration(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_declaration(Ctx, Id) ->
    get_declaration(Ctx, Id, #{}).

-spec get_declaration(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_declaration(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/declarations/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_declarations(ctx:ctx()) -> {ok, [openapi_declaration:openapi_declaration()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_declarations(Ctx) ->
    get_declarations(Ctx, #{}).

-spec get_declarations(ctx:ctx(), maps:map()) -> {ok, [openapi_declaration:openapi_declaration()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_declarations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/declarations/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_declaration(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_declaration_update:openapi_declaration_update()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_declaration(Ctx, Id, OpenapiDeclarationUpdate) ->
    update_declaration(Ctx, Id, OpenapiDeclarationUpdate, #{}).

-spec update_declaration(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_declaration_update:openapi_declaration_update(), maps:map()) -> {ok, openapi_declaration:openapi_declaration(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_declaration(Ctx, Id, OpenapiDeclarationUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/declarations/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiDeclarationUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


