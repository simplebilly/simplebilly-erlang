-module(openapi_list_open_items_api).

-export([list_open_items_api/1, list_open_items_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec list_open_items_api(ctx:ctx()) -> {ok, [openapi_open_item:openapi_open_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_open_items_api(Ctx) ->
    list_open_items_api(Ctx, #{}).

-spec list_open_items_api(ctx:ctx(), maps:map()) -> {ok, [openapi_open_item:openapi_open_item()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_open_items_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/open-items"],
    QS = lists:flatten([])++openapi_utils:optional_params(['reminder_level1_days', 'reminder_level2_days', 'reminder_level3_days', 'customer_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


