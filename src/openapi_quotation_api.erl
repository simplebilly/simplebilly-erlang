-module(openapi_quotation_api).

-export([create_quotation/2, create_quotation/3,
         delete_quotation/2, delete_quotation/3,
         download_quotation_pdf/2, download_quotation_pdf/3,
         get_quotation/2, get_quotation/3,
         list_quotations/1, list_quotations/2,
         pursue_quotation/2, pursue_quotation/3,
         quotation_restore/2, quotation_restore/3,
         update_quotation/3, update_quotation/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_quotation(ctx:ctx(), openapi_quotation_create:openapi_quotation_create()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_quotation(Ctx, OpenapiQuotationCreate) ->
    create_quotation(Ctx, OpenapiQuotationCreate, #{}).

-spec create_quotation(ctx:ctx(), openapi_quotation_create:openapi_quotation_create(), maps:map()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_quotation(Ctx, OpenapiQuotationCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/quotations"],
    QS = [],
    Headers = [],
    Body1 = OpenapiQuotationCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_quotation(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_quotation(Ctx, QuotationId) ->
    delete_quotation(Ctx, QuotationId, #{}).

-spec delete_quotation(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_quotation(Ctx, QuotationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/quotations/", QuotationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec download_quotation_pdf(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_quotation_pdf(Ctx, QuotationId) ->
    download_quotation_pdf(Ctx, QuotationId, #{}).

-spec download_quotation_pdf(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
download_quotation_pdf(Ctx, QuotationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/quotations/", QuotationId, "/pdf"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_quotation(ctx:ctx(), binary()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_quotation(Ctx, QuotationId) ->
    get_quotation(Ctx, QuotationId, #{}).

-spec get_quotation(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_quotation(Ctx, QuotationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/quotations/", QuotationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_quotations(ctx:ctx()) -> {ok, [openapi_quotation:openapi_quotation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_quotations(Ctx) ->
    list_quotations(Ctx, #{}).

-spec list_quotations(ctx:ctx(), maps:map()) -> {ok, [openapi_quotation:openapi_quotation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_quotations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/quotations/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pursue_quotation(ctx:ctx(), binary()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pursue_quotation(Ctx, QuotationId) ->
    pursue_quotation(Ctx, QuotationId, #{}).

-spec pursue_quotation(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order_confirmation:openapi_order_confirmation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pursue_quotation(Ctx, QuotationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/quotations/", QuotationId, "/pursue"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec quotation_restore(ctx:ctx(), binary()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
quotation_restore(Ctx, QuotationId) ->
    quotation_restore(Ctx, QuotationId, #{}).

-spec quotation_restore(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
quotation_restore(Ctx, QuotationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/quotations/", QuotationId, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_quotation(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_quotation(Ctx, QuotationId, Body) ->
    update_quotation(Ctx, QuotationId, Body, #{}).

-spec update_quotation(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_quotation:openapi_quotation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_quotation(Ctx, QuotationId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/quotations/", QuotationId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


