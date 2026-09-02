-module(openapi_ticket_message_api).

-export([list_messages_api/2, list_messages_api/3,
         send_message_api/3, send_message_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec list_messages_api(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [openapi_ticket_message:openapi_ticket_message()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_messages_api(Ctx, TicketId) ->
    list_messages_api(Ctx, TicketId, #{}).

-spec list_messages_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [openapi_ticket_message:openapi_ticket_message()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_messages_api(Ctx, TicketId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/support/tickets/", TicketId, "/messages"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec send_message_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_send_message_dto:openapi_send_message_dto()) -> {ok, openapi_ticket_message:openapi_ticket_message(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
send_message_api(Ctx, TicketId, OpenapiSendMessageDto) ->
    send_message_api(Ctx, TicketId, OpenapiSendMessageDto, #{}).

-spec send_message_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_send_message_dto:openapi_send_message_dto(), maps:map()) -> {ok, openapi_ticket_message:openapi_ticket_message(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
send_message_api(Ctx, TicketId, OpenapiSendMessageDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/support/tickets/", TicketId, "/messages"],
    QS = [],
    Headers = [],
    Body1 = OpenapiSendMessageDto,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


