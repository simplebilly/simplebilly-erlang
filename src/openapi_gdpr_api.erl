-module(openapi_gdpr_api).

-export([accept_dpa/2, accept_dpa/3,
         account_erasure/1, account_erasure/2,
         erasure_contact/2, erasure_contact/3,
         export_contact_data/2, export_contact_data/3,
         export_gdpr/1, export_gdpr/2,
         get_dpa/1, get_dpa/2]).

-define(BASE_URL, <<"">>).

%% @doc Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).
%% 
-spec accept_dpa(ctx:ctx(), openapi_dpa_accept_request:openapi_dpa_accept_request()) -> {ok, openapi_dpa_status:openapi_dpa_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
accept_dpa(Ctx, OpenapiDpaAcceptRequest) ->
    accept_dpa(Ctx, OpenapiDpaAcceptRequest, #{}).

-spec accept_dpa(ctx:ctx(), openapi_dpa_accept_request:openapi_dpa_accept_request(), maps:map()) -> {ok, openapi_dpa_status:openapi_dpa_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
accept_dpa(Ctx, OpenapiDpaAcceptRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/gdpr/dpa"],
    QS = [],
    Headers = [],
    Body1 = OpenapiDpaAcceptRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).
%% Anonymizes every contact, anonymizes personal fields on bookkeeping records (orders/invoices/payments keep amounts and dates for GoBD), removes the tenant linkage of the (global, saasy-framework) users and marks the erasure on `tenant_settings.gdpr_erased_at`. No row is physically deleted. The audit triggers on the touched tables record who/when.
-spec account_erasure(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
account_erasure(Ctx) ->
    account_erasure(Ctx, #{}).

-spec account_erasure(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
account_erasure(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/gdpr/account-erasure"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on `contacts` already records who/when.
%% 
-spec erasure_contact(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
erasure_contact(Ctx, ContactId) ->
    erasure_contact(Ctx, ContactId, #{}).

-spec erasure_contact(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
erasure_contact(Ctx, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/gdpr/erasure/", ContactId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Art. 15 data-subject access export for a contact.
%% Returns the contact itself plus the tenant-scoped rows linked to it.  ## Relations The `customers`/`orders`/`invoices`/`payments` tables have no FK to `contacts`; they are linked through the `customer_id` column, which per the app's conventions holds one of: - the admin customer's `customer_id` (a UUID, often the same value as   the contact's `contact_id`/`customer_number`), - the buyer's email for shop orders, or - the marketplace's external customer id for plugin orders.  The export therefore matches the contact's identifiers (`contact_id`, `customer_number`, `external_id`, `email`) plus any resolved customer ids against `customer_id`. `delivery_notes` and `customer_communications` reference contacts directly via `contact_id`. Soft-deleted rows are included (their data is still processed and retained for GoBD). Relations that genuinely do not exist for a contact stay empty but the key is always present.
-spec export_contact_data(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
export_contact_data(Ctx, ContactId) ->
    export_contact_data(Ctx, ContactId, #{}).

-spec export_contact_data(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
export_contact_data(Ctx, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/gdpr/export/", ContactId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Export the current user's personal data (GDPR Art. 15/20).
%% No admin permission required: a user always exports their own data.
-spec export_gdpr(ctx:ctx()) -> {ok, openapi_api_response_gdpr_export:openapi_api_response_gdpr_export(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
export_gdpr(Ctx) ->
    export_gdpr(Ctx, #{}).

-spec export_gdpr(ctx:ctx(), maps:map()) -> {ok, openapi_api_response_gdpr_export:openapi_api_response_gdpr_export(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
export_gdpr(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/gdpr/export"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Current DPA acceptance status (from tenant_settings).
%% 
-spec get_dpa(ctx:ctx()) -> {ok, openapi_dpa_status:openapi_dpa_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_dpa(Ctx) ->
    get_dpa(Ctx, #{}).

-spec get_dpa(ctx:ctx(), maps:map()) -> {ok, openapi_dpa_status:openapi_dpa_status(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_dpa(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/gdpr/dpa"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


