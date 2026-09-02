-module(openapi_admin_api).

-export([trigger_mirror/1, trigger_mirror/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec trigger_mirror(ctx:ctx()) -> {ok, openapi_mirror_trigger_response:openapi_mirror_trigger_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
trigger_mirror(Ctx) ->
    trigger_mirror(Ctx, #{}).

-spec trigger_mirror(ctx:ctx(), maps:map()) -> {ok, openapi_mirror_trigger_response:openapi_mirror_trigger_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
trigger_mirror(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/admin/storage/mirror"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


