-module(openapi_support_ticket_api).

-export([create_ticket_api/2, create_ticket_api/3,
         delete_ticket_api/2, delete_ticket_api/3,
         get_ticket_api/2, get_ticket_api/3,
         list_tickets_api/1, list_tickets_api/2,
         update_ticket_api/3, update_ticket_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_ticket_api(ctx:ctx(), openapi_create_ticket_request:openapi_create_ticket_request()) -> {ok, openapi_support_ticket:openapi_support_ticket(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_ticket_api(Ctx, OpenapiCreateTicketRequest) ->
    create_ticket_api(Ctx, OpenapiCreateTicketRequest, #{}).

-spec create_ticket_api(ctx:ctx(), openapi_create_ticket_request:openapi_create_ticket_request(), maps:map()) -> {ok, openapi_support_ticket:openapi_support_ticket(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_ticket_api(Ctx, OpenapiCreateTicketRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/support/tickets"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCreateTicketRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_ticket_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_ticket_api(Ctx, TicketId) ->
    delete_ticket_api(Ctx, TicketId, #{}).

-spec delete_ticket_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_ticket_api(Ctx, TicketId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/support/tickets/", TicketId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_ticket_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_support_ticket:openapi_support_ticket(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_ticket_api(Ctx, TicketId) ->
    get_ticket_api(Ctx, TicketId, #{}).

-spec get_ticket_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_support_ticket:openapi_support_ticket(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_ticket_api(Ctx, TicketId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/support/tickets/", TicketId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_tickets_api(ctx:ctx()) -> {ok, [openapi_support_ticket:openapi_support_ticket()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_tickets_api(Ctx) ->
    list_tickets_api(Ctx, #{}).

-spec list_tickets_api(ctx:ctx(), maps:map()) -> {ok, [openapi_support_ticket:openapi_support_ticket()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_tickets_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/support/tickets"],
    QS = lists:flatten([])++openapi_utils:optional_params(['status', 'priority', 'assigned_to', 'channel_type', 'customer_id', 'search', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_ticket_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_support_ticket_update:openapi_support_ticket_update()) -> {ok, openapi_support_ticket:openapi_support_ticket(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_ticket_api(Ctx, TicketId, OpenapiSupportTicketUpdate) ->
    update_ticket_api(Ctx, TicketId, OpenapiSupportTicketUpdate, #{}).

-spec update_ticket_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_support_ticket_update:openapi_support_ticket_update(), maps:map()) -> {ok, openapi_support_ticket:openapi_support_ticket(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_ticket_api(Ctx, TicketId, OpenapiSupportTicketUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/support/tickets/", TicketId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiSupportTicketUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


