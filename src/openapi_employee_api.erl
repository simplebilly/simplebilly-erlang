-module(openapi_employee_api).

-export([create_employee/2, create_employee/3,
         delete_employee/2, delete_employee/3,
         employee_restore/2, employee_restore/3,
         get_employee/2, get_employee/3,
         get_employee_payroll_summary/2, get_employee_payroll_summary/3,
         get_employees/1, get_employees/2,
         update_employee/3, update_employee/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_employee(ctx:ctx(), openapi_employee_create:openapi_employee_create()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_employee(Ctx, OpenapiEmployeeCreate) ->
    create_employee(Ctx, OpenapiEmployeeCreate, #{}).

-spec create_employee(ctx:ctx(), openapi_employee_create:openapi_employee_create(), maps:map()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_employee(Ctx, OpenapiEmployeeCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/employees"],
    QS = [],
    Headers = [],
    Body1 = OpenapiEmployeeCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_employee(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_employee(Ctx, Id) ->
    delete_employee(Ctx, Id, #{}).

-spec delete_employee(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_employee(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/employees/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec employee_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
employee_restore(Ctx, Id) ->
    employee_restore(Ctx, Id, #{}).

-spec employee_restore(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
employee_restore(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/employees/", Id, "/restore"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_employee(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_employee(Ctx, Id) ->
    get_employee(Ctx, Id, #{}).

-spec get_employee(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_employee(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/employees/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_employee_payroll_summary(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_payroll_summary:openapi_payroll_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_employee_payroll_summary(Ctx, Id) ->
    get_employee_payroll_summary(Ctx, Id, #{}).

-spec get_employee_payroll_summary(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_payroll_summary:openapi_payroll_summary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_employee_payroll_summary(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/employees/", Id, "/payroll-summary"],
    QS = lists:flatten([])++openapi_utils:optional_params(['year'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_employees(ctx:ctx()) -> {ok, [openapi_employee:openapi_employee()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_employees(Ctx) ->
    get_employees(Ctx, #{}).

-spec get_employees(ctx:ctx(), maps:map()) -> {ok, [openapi_employee:openapi_employee()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_employees(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/employees/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'include_deleted'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_employee(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_employee_update:openapi_employee_update()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_employee(Ctx, Id, OpenapiEmployeeUpdate) ->
    update_employee(Ctx, Id, OpenapiEmployeeUpdate, #{}).

-spec update_employee(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_employee_update:openapi_employee_update(), maps:map()) -> {ok, openapi_employee:openapi_employee(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_employee(Ctx, Id, OpenapiEmployeeUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/employees/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiEmployeeUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


