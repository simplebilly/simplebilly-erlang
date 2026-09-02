-module(openapi_banking_api).

-export([bank_lookup_api/2, bank_lookup_api/3,
         bank_transactions_api/1, bank_transactions_api/2,
         hebesatz_lookup_api/1, hebesatz_lookup_api/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec bank_lookup_api(ctx:ctx(), binary()) -> {ok, openapi_bank_lookup:openapi_bank_lookup(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bank_lookup_api(Ctx, Iban) ->
    bank_lookup_api(Ctx, Iban, #{}).

-spec bank_lookup_api(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_bank_lookup:openapi_bank_lookup(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bank_lookup_api(Ctx, Iban, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/banking/lookup"],
    QS = lists:flatten([{<<"iban">>, Iban}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec bank_transactions_api(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bank_transactions_api(Ctx) ->
    bank_transactions_api(Ctx, #{}).

-spec bank_transactions_api(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
bank_transactions_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/banking/transactions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec hebesatz_lookup_api(ctx:ctx()) -> {ok, [openapi_hebesatz_lookup:openapi_hebesatz_lookup()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
hebesatz_lookup_api(Ctx) ->
    hebesatz_lookup_api(Ctx, #{}).

-spec hebesatz_lookup_api(ctx:ctx(), maps:map()) -> {ok, [openapi_hebesatz_lookup:openapi_hebesatz_lookup()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
hebesatz_lookup_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/bookkeeping/hebesatz"],
    QS = lists:flatten([])++openapi_utils:optional_params(['gemeindeschluessel', 'plz', 'name', 'stichtag', 'country_code'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


