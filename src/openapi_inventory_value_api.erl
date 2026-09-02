-module(openapi_inventory_value_api).

-export([get_inventory_value_api/1, get_inventory_value_api/2,
         record_inventory_value_api/1, record_inventory_value_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec get_inventory_value_api(ctx:ctx()) -> {ok, openapi_current_inventory_value:openapi_current_inventory_value(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_inventory_value_api(Ctx) ->
    get_inventory_value_api(Ctx, #{}).

-spec get_inventory_value_api(ctx:ctx(), maps:map()) -> {ok, openapi_current_inventory_value:openapi_current_inventory_value(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_inventory_value_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/inventory-value"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec record_inventory_value_api(ctx:ctx()) -> {ok, openapi_inventory_value_point:openapi_inventory_value_point(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
record_inventory_value_api(Ctx) ->
    record_inventory_value_api(Ctx, #{}).

-spec record_inventory_value_api(ctx:ctx(), maps:map()) -> {ok, openapi_inventory_value_point:openapi_inventory_value_point(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
record_inventory_value_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/inventory-value/record"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


