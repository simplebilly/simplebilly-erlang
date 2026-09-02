-module(openapi_silent_partner_api).

-export([create_silent_partner/2, create_silent_partner/3,
         delete_silent_partner/2, delete_silent_partner/3,
         get_silent_partner/2, get_silent_partner/3,
         get_silent_partners/1, get_silent_partners/2,
         update_silent_partner/3, update_silent_partner/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_silent_partner(ctx:ctx(), openapi_silent_partner_create:openapi_silent_partner_create()) -> {ok, openapi_silent_partner:openapi_silent_partner(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_silent_partner(Ctx, OpenapiSilentPartnerCreate) ->
    create_silent_partner(Ctx, OpenapiSilentPartnerCreate, #{}).

-spec create_silent_partner(ctx:ctx(), openapi_silent_partner_create:openapi_silent_partner_create(), maps:map()) -> {ok, openapi_silent_partner:openapi_silent_partner(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_silent_partner(Ctx, OpenapiSilentPartnerCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/silent-partners"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSilentPartnerCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_silent_partner(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_silent_partner(Ctx, Id) ->
    delete_silent_partner(Ctx, Id, #{}).

-spec delete_silent_partner(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_silent_partner(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/silent-partners/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_silent_partner(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_silent_partner:openapi_silent_partner(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_silent_partner(Ctx, Id) ->
    get_silent_partner(Ctx, Id, #{}).

-spec get_silent_partner(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_silent_partner:openapi_silent_partner(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_silent_partner(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/silent-partners/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_silent_partners(ctx:ctx()) -> {ok, [openapi_silent_partner:openapi_silent_partner()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_silent_partners(Ctx) ->
    get_silent_partners(Ctx, #{}).

-spec get_silent_partners(ctx:ctx(), maps:map()) -> {ok, [openapi_silent_partner:openapi_silent_partner()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_silent_partners(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/silent-partners/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_silent_partner(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_silent_partner_update:openapi_silent_partner_update()) -> {ok, openapi_silent_partner:openapi_silent_partner(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_silent_partner(Ctx, Id, OpenapiSilentPartnerUpdate) ->
    update_silent_partner(Ctx, Id, OpenapiSilentPartnerUpdate, #{}).

-spec update_silent_partner(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_silent_partner_update:openapi_silent_partner_update(), maps:map()) -> {ok, openapi_silent_partner:openapi_silent_partner(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_silent_partner(Ctx, Id, OpenapiSilentPartnerUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/silent-partners/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiSilentPartnerUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


