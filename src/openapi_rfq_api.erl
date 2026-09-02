-module(openapi_rfq_api).

-export([convert_rfq/2, convert_rfq/3,
         create_rfq/2, create_rfq/3,
         delete_rfq/2, delete_rfq/3,
         get_rfq/2, get_rfq/3,
         list_rfqs/1, list_rfqs/2,
         update_rfq/3, update_rfq/4,
         update_rfq_status/3, update_rfq_status/4]).

-define(BASE_URL, <<"">>).

%% @doc Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as `converted`.
%% 
-spec convert_rfq(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
convert_rfq(Ctx, RfqId) ->
    convert_rfq(Ctx, RfqId, #{}).

-spec convert_rfq(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
convert_rfq(Ctx, RfqId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/rfqs/", RfqId, "/convert"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec create_rfq(ctx:ctx(), openapi_rfq:openapi_rfq()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_rfq(Ctx, OpenapiRfq) ->
    create_rfq(Ctx, OpenapiRfq, #{}).

-spec create_rfq(ctx:ctx(), openapi_rfq:openapi_rfq(), maps:map()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_rfq(Ctx, OpenapiRfq, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/rfqs"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRfq,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_rfq(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_rfq(Ctx, RfqId) ->
    delete_rfq(Ctx, RfqId, #{}).

-spec delete_rfq(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_rfq(Ctx, RfqId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/rfqs/", RfqId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_rfq(ctx:ctx(), binary()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_rfq(Ctx, RfqId) ->
    get_rfq(Ctx, RfqId, #{}).

-spec get_rfq(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_rfq(Ctx, RfqId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/rfqs/", RfqId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_rfqs(ctx:ctx()) -> {ok, [openapi_rfq:openapi_rfq()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_rfqs(Ctx) ->
    list_rfqs(Ctx, #{}).

-spec list_rfqs(ctx:ctx(), maps:map()) -> {ok, [openapi_rfq:openapi_rfq()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_rfqs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/rfqs/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'supplier_name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_rfq(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_rfq(Ctx, RfqId, Body) ->
    update_rfq(Ctx, RfqId, Body, #{}).

-spec update_rfq(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_rfq(Ctx, RfqId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/rfqs/", RfqId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_rfq_status(ctx:ctx(), binary(), openapi_rfq_status_update:openapi_rfq_status_update()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_rfq_status(Ctx, RfqId, OpenapiRfqStatusUpdate) ->
    update_rfq_status(Ctx, RfqId, OpenapiRfqStatusUpdate, #{}).

-spec update_rfq_status(ctx:ctx(), binary(), openapi_rfq_status_update:openapi_rfq_status_update(), maps:map()) -> {ok, openapi_rfq:openapi_rfq(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_rfq_status(Ctx, RfqId, OpenapiRfqStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/rfqs/", RfqId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRfqStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


