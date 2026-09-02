-module(openapi_create_sepa_direct_debit_api).

-export([create_sepa_direct_debit_api/10, create_sepa_direct_debit_api/11]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_sepa_direct_debit_api(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), binary(), binary(), binary(), binary()) -> {ok, openapi_sepa_direct_debit_response:openapi_sepa_direct_debit_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_sepa_direct_debit_api(Ctx, CreditorName, CreditorIban, CreditorId, MandateId, MandateDate, DebtorName, DebtorIban, Amount, CollectionDate) ->
    create_sepa_direct_debit_api(Ctx, CreditorName, CreditorIban, CreditorId, MandateId, MandateDate, DebtorName, DebtorIban, Amount, CollectionDate, #{}).

-spec create_sepa_direct_debit_api(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_sepa_direct_debit_response:openapi_sepa_direct_debit_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_sepa_direct_debit_api(Ctx, CreditorName, CreditorIban, CreditorId, MandateId, MandateDate, DebtorName, DebtorIban, Amount, CollectionDate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/bookkeeping/sepa-direct-debit"],
    QS = lists:flatten([{<<"creditor_name">>, CreditorName}, {<<"creditor_iban">>, CreditorIban}, {<<"creditor_id">>, CreditorId}, {<<"mandate_id">>, MandateId}, {<<"mandate_date">>, MandateDate}, {<<"debtor_name">>, DebtorName}, {<<"debtor_iban">>, DebtorIban}, {<<"amount">>, Amount}, {<<"collection_date">>, CollectionDate}])++openapi_utils:optional_params(['creditor_bic', 'debtor_bic', 'description'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


