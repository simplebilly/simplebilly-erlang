-module(openapi_credit_note_api).

-export([create_credit_note/2, create_credit_note/3,
         download_credit_note_pdf/2, download_credit_note_pdf/3,
         get_credit_note/2, get_credit_note/3,
         list_credit_notes/1, list_credit_notes/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_credit_note(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_invoice:openapi_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_credit_note(Ctx, Body) ->
    create_credit_note(Ctx, Body, #{}).

-spec create_credit_note(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_invoice:openapi_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_credit_note(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/credit-notes"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec download_credit_note_pdf(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_credit_note_pdf(Ctx, CreditNoteId) ->
    download_credit_note_pdf(Ctx, CreditNoteId, #{}).

-spec download_credit_note_pdf(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_credit_note_pdf(Ctx, CreditNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/credit-notes/", CreditNoteId, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_credit_note(ctx:ctx(), binary()) -> {ok, openapi_invoice:openapi_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_credit_note(Ctx, CreditNoteId) ->
    get_credit_note(Ctx, CreditNoteId, #{}).

-spec get_credit_note(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_invoice:openapi_invoice(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_credit_note(Ctx, CreditNoteId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/credit-notes/", CreditNoteId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_credit_notes(ctx:ctx()) -> {ok, [openapi_invoice:openapi_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_credit_notes(Ctx) ->
    list_credit_notes(Ctx, #{}).

-spec list_credit_notes(ctx:ctx(), maps:map()) -> {ok, [openapi_invoice:openapi_invoice()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_credit_notes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/credit-notes/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


