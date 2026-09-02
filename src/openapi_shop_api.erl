-module(openapi_shop_api).

-export([shop_editor_save/2, shop_editor_save/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec shop_editor_save(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
shop_editor_save(Ctx, Body) ->
    shop_editor_save(Ctx, Body, #{}).

-spec shop_editor_save(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
shop_editor_save(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/shop/editor"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


