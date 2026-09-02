-module(openapi_institute_api).

-export([institute_status_api/1, institute_status_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec institute_status_api(ctx:ctx()) -> {ok, openapi_institute_status:openapi_institute_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
institute_status_api(Ctx) ->
    institute_status_api(Ctx, #{}).

-spec institute_status_api(ctx:ctx(), maps:map()) -> {ok, openapi_institute_status:openapi_institute_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
institute_status_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/institute/status"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


