-module(openapi_datev_import_api).

-export([datev_import_api/2, datev_import_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec datev_import_api(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_datev_import_response:openapi_datev_import_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
datev_import_api(Ctx, Body) ->
    datev_import_api(Ctx, Body, #{}).

-spec datev_import_api(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_datev_import_response:openapi_datev_import_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
datev_import_api(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/datev/import"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


