-module(openapi_customer_communication_api).

-export([create_communication/2, create_communication/3,
         customercommunication_restore/2, customercommunication_restore/3,
         delete_communication/2, delete_communication/3,
         get_communication/2, get_communication/3,
         get_contact_history/2, get_contact_history/3,
         list_communications/1, list_communications/2,
         update_communication/3, update_communication/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_communication(ctx:ctx(), openapi_customer_communication_create:openapi_customer_communication_create()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_communication(Ctx, OpenapiCustomerCommunicationCreate) ->
    create_communication(Ctx, OpenapiCustomerCommunicationCreate, #{}).

-spec create_communication(ctx:ctx(), openapi_customer_communication_create:openapi_customer_communication_create(), maps:map()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_communication(Ctx, OpenapiCustomerCommunicationCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/communications"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCustomerCommunicationCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec customercommunication_restore(ctx:ctx(), binary()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
customercommunication_restore(Ctx, CommunicationId) ->
    customercommunication_restore(Ctx, CommunicationId, #{}).

-spec customercommunication_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
customercommunication_restore(Ctx, CommunicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/communications/", CommunicationId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_communication(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_communication(Ctx, CommunicationId) ->
    delete_communication(Ctx, CommunicationId, #{}).

-spec delete_communication(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_communication(Ctx, CommunicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/communications/", CommunicationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_communication(ctx:ctx(), binary()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_communication(Ctx, CommunicationId) ->
    get_communication(Ctx, CommunicationId, #{}).

-spec get_communication(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_communication(Ctx, CommunicationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/communications/", CommunicationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_contact_history(ctx:ctx(), binary()) -> {ok, openapi_contact_history_response:openapi_contact_history_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_contact_history(Ctx, ContactId) ->
    get_contact_history(Ctx, ContactId, #{}).

-spec get_contact_history(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_contact_history_response:openapi_contact_history_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_contact_history(Ctx, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/contacts/", ContactId, "/communications"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_communications(ctx:ctx()) -> {ok, [openapi_customer_communication:openapi_customer_communication()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_communications(Ctx) ->
    list_communications(Ctx, #{}).

-spec list_communications(ctx:ctx(), maps:map()) -> {ok, [openapi_customer_communication:openapi_customer_communication()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_communications(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/communications/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'contact_id', 'channel', 'direction', 'from', 'to'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_communication(ctx:ctx(), binary(), openapi_customer_communication_update:openapi_customer_communication_update()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_communication(Ctx, CommunicationId, OpenapiCustomerCommunicationUpdate) ->
    update_communication(Ctx, CommunicationId, OpenapiCustomerCommunicationUpdate, #{}).

-spec update_communication(ctx:ctx(), binary(), openapi_customer_communication_update:openapi_customer_communication_update(), maps:map()) -> {ok, openapi_customer_communication:openapi_customer_communication(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_communication(Ctx, CommunicationId, OpenapiCustomerCommunicationUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/communications/", CommunicationId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiCustomerCommunicationUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


