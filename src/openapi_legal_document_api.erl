-module(openapi_legal_document_api).

-export([get_legal_documents/1, get_legal_documents/2,
         reset_legal_documents/2, reset_legal_documents/3,
         upsert_legal_documents/2, upsert_legal_documents/3]).

-define(BASE_URL, <<"">>).

%% @doc List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.
%% 
-spec get_legal_documents(ctx:ctx()) -> {ok, [openapi_legal_document:openapi_legal_document()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_legal_documents(Ctx) ->
    get_legal_documents(Ctx, #{}).

-spec get_legal_documents(ctx:ctx(), maps:map()) -> {ok, [openapi_legal_document:openapi_legal_document()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_legal_documents(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/legal/documents"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.
%% 
-spec reset_legal_documents(ctx:ctx(), openapi_legal_document_reset:openapi_legal_document_reset()) -> {ok, [openapi_legal_document:openapi_legal_document()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
reset_legal_documents(Ctx, OpenapiLegalDocumentReset) ->
    reset_legal_documents(Ctx, OpenapiLegalDocumentReset, #{}).

-spec reset_legal_documents(ctx:ctx(), openapi_legal_document_reset:openapi_legal_document_reset(), maps:map()) -> {ok, [openapi_legal_document:openapi_legal_document()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
reset_legal_documents(Ctx, OpenapiLegalDocumentReset, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/legal/documents/reset"],
    QS = [],
    Headers = [],
    Body1 = OpenapiLegalDocumentReset,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Upsert legal documents per (doc_type, lang). Returns the full tenant list.
%% 
-spec upsert_legal_documents(ctx:ctx(), list()) -> {ok, [openapi_legal_document:openapi_legal_document()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
upsert_legal_documents(Ctx, OpenapiLegalDocumentUpsertArray) ->
    upsert_legal_documents(Ctx, OpenapiLegalDocumentUpsertArray, #{}).

-spec upsert_legal_documents(ctx:ctx(), list(), maps:map()) -> {ok, [openapi_legal_document:openapi_legal_document()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
upsert_legal_documents(Ctx, OpenapiLegalDocumentUpsertArray, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/legal/documents"],
    QS = [],
    Headers = [],
    Body1 = OpenapiLegalDocumentUpsertArray,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


