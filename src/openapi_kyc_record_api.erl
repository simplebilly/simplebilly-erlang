-module(openapi_kyc_record_api).

-export([create_kyc_record/2, create_kyc_record/3,
         delete_kyc_record/2, delete_kyc_record/3,
         get_kyc_record/2, get_kyc_record/3,
         get_kyc_records/1, get_kyc_records/2,
         update_kyc_record/3, update_kyc_record/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_kyc_record(ctx:ctx(), openapi_kyc_record_create:openapi_kyc_record_create()) -> {ok, openapi_kyc_record:openapi_kyc_record(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_kyc_record(Ctx, OpenapiKycRecordCreate) ->
    create_kyc_record(Ctx, OpenapiKycRecordCreate, #{}).

-spec create_kyc_record(ctx:ctx(), openapi_kyc_record_create:openapi_kyc_record_create(), maps:map()) -> {ok, openapi_kyc_record:openapi_kyc_record(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_kyc_record(Ctx, OpenapiKycRecordCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/kyc-records"],
    QS = [],
    Headers = [],
    Body1 = OpenapiKycRecordCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_kyc_record(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_kyc_record(Ctx, Id) ->
    delete_kyc_record(Ctx, Id, #{}).

-spec delete_kyc_record(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_kyc_record(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/kyc-records/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_kyc_record(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_kyc_record:openapi_kyc_record(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_kyc_record(Ctx, Id) ->
    get_kyc_record(Ctx, Id, #{}).

-spec get_kyc_record(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_kyc_record:openapi_kyc_record(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_kyc_record(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/kyc-records/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_kyc_records(ctx:ctx()) -> {ok, [openapi_kyc_record:openapi_kyc_record()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_kyc_records(Ctx) ->
    get_kyc_records(Ctx, #{}).

-spec get_kyc_records(ctx:ctx(), maps:map()) -> {ok, [openapi_kyc_record:openapi_kyc_record()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_kyc_records(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/kyc-records/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_kyc_record(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_kyc_record_update:openapi_kyc_record_update()) -> {ok, openapi_kyc_record:openapi_kyc_record(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_kyc_record(Ctx, Id, OpenapiKycRecordUpdate) ->
    update_kyc_record(Ctx, Id, OpenapiKycRecordUpdate, #{}).

-spec update_kyc_record(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_kyc_record_update:openapi_kyc_record_update(), maps:map()) -> {ok, openapi_kyc_record:openapi_kyc_record(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_kyc_record(Ctx, Id, OpenapiKycRecordUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/kyc-records/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiKycRecordUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


