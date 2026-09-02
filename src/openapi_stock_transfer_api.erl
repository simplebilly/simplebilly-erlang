-module(openapi_stock_transfer_api).

-export([create_stock_transfer/2, create_stock_transfer/3,
         delete_stock_transfer/2, delete_stock_transfer/3,
         get_stock_transfer/2, get_stock_transfer/3,
         list_stock_transfers/1, list_stock_transfers/2,
         update_stock_transfer_status/3, update_stock_transfer_status/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_stock_transfer(ctx:ctx(), openapi_stock_transfer:openapi_stock_transfer()) -> {ok, openapi_stock_transfer:openapi_stock_transfer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_stock_transfer(Ctx, OpenapiStockTransfer) ->
    create_stock_transfer(Ctx, OpenapiStockTransfer, #{}).

-spec create_stock_transfer(ctx:ctx(), openapi_stock_transfer:openapi_stock_transfer(), maps:map()) -> {ok, openapi_stock_transfer:openapi_stock_transfer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_stock_transfer(Ctx, OpenapiStockTransfer, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/stock-transfers"],
    QS = [],
    Headers = [],
    Body1 = OpenapiStockTransfer,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_stock_transfer(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_stock_transfer(Ctx, StockTransferId) ->
    delete_stock_transfer(Ctx, StockTransferId, #{}).

-spec delete_stock_transfer(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_stock_transfer(Ctx, StockTransferId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/stock-transfers/", StockTransferId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_stock_transfer(ctx:ctx(), binary()) -> {ok, openapi_stock_transfer:openapi_stock_transfer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_stock_transfer(Ctx, StockTransferId) ->
    get_stock_transfer(Ctx, StockTransferId, #{}).

-spec get_stock_transfer(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_stock_transfer:openapi_stock_transfer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_stock_transfer(Ctx, StockTransferId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/stock-transfers/", StockTransferId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_stock_transfers(ctx:ctx()) -> {ok, [openapi_stock_transfer:openapi_stock_transfer()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_stock_transfers(Ctx) ->
    list_stock_transfers(Ctx, #{}).

-spec list_stock_transfers(ctx:ctx(), maps:map()) -> {ok, [openapi_stock_transfer:openapi_stock_transfer()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_stock_transfers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/stock-transfers/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'status', 'warehouse_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_stock_transfer_status(ctx:ctx(), binary(), openapi_stock_transfer_status_update:openapi_stock_transfer_status_update()) -> {ok, openapi_stock_transfer:openapi_stock_transfer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_stock_transfer_status(Ctx, StockTransferId, OpenapiStockTransferStatusUpdate) ->
    update_stock_transfer_status(Ctx, StockTransferId, OpenapiStockTransferStatusUpdate, #{}).

-spec update_stock_transfer_status(ctx:ctx(), binary(), openapi_stock_transfer_status_update:openapi_stock_transfer_status_update(), maps:map()) -> {ok, openapi_stock_transfer:openapi_stock_transfer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_stock_transfer_status(Ctx, StockTransferId, OpenapiStockTransferStatusUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/stock-transfers/", StockTransferId, "/status"],
    QS = [],
    Headers = [],
    Body1 = OpenapiStockTransferStatusUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


