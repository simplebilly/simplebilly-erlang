-module(openapi_zugferd_api).

-export([generate_zugferd_api/2, generate_zugferd_api/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec generate_zugferd_api(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_zugferd_api(Ctx, Id) ->
    generate_zugferd_api(Ctx, Id, #{}).

-spec generate_zugferd_api(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_zugferd_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/invoices/", Id, "/zugferd"],
    QS = lists:flatten([])++openapi_utils:optional_params(['supplier_name', 'supplier_street', 'supplier_city', 'supplier_zip', 'supplier_country', 'supplier_vat_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


