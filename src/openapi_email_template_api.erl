-module(openapi_email_template_api).

-export([create_email_template/2, create_email_template/3,
         delete_email_template/2, delete_email_template/3,
         get_email_template/2, get_email_template/3,
         list_email_templates/1, list_email_templates/2,
         render_email_template/3, render_email_template/4,
         update_email_template/3, update_email_template/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_email_template(ctx:ctx(), openapi_email_template_create:openapi_email_template_create()) -> {ok, openapi_email_template:openapi_email_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_email_template(Ctx, OpenapiEmailTemplateCreate) ->
    create_email_template(Ctx, OpenapiEmailTemplateCreate, #{}).

-spec create_email_template(ctx:ctx(), openapi_email_template_create:openapi_email_template_create(), maps:map()) -> {ok, openapi_email_template:openapi_email_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_email_template(Ctx, OpenapiEmailTemplateCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/email-templates"],
    QS = [],
    Headers = [],
    Body1 = OpenapiEmailTemplateCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_email_template(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_email_template(Ctx, EmailTemplateId) ->
    delete_email_template(Ctx, EmailTemplateId, #{}).

-spec delete_email_template(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_email_template(Ctx, EmailTemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/email-templates/", EmailTemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_email_template(ctx:ctx(), binary()) -> {ok, openapi_email_template:openapi_email_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_email_template(Ctx, EmailTemplateId) ->
    get_email_template(Ctx, EmailTemplateId, #{}).

-spec get_email_template(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_email_template:openapi_email_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_email_template(Ctx, EmailTemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/email-templates/", EmailTemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_email_templates(ctx:ctx()) -> {ok, [openapi_email_template:openapi_email_template()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_email_templates(Ctx) ->
    list_email_templates(Ctx, #{}).

-spec list_email_templates(ctx:ctx(), maps:map()) -> {ok, [openapi_email_template:openapi_email_template()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_email_templates(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/email-templates/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'pageSize', 'status', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec render_email_template(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
render_email_template(Ctx, EmailTemplateId, Body) ->
    render_email_template(Ctx, EmailTemplateId, Body, #{}).

-spec render_email_template(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
render_email_template(Ctx, EmailTemplateId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/email-templates/", EmailTemplateId, "/render"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_email_template(ctx:ctx(), binary(), openapi_email_template_update:openapi_email_template_update()) -> {ok, openapi_email_template:openapi_email_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_email_template(Ctx, EmailTemplateId, OpenapiEmailTemplateUpdate) ->
    update_email_template(Ctx, EmailTemplateId, OpenapiEmailTemplateUpdate, #{}).

-spec update_email_template(ctx:ctx(), binary(), openapi_email_template_update:openapi_email_template_update(), maps:map()) -> {ok, openapi_email_template:openapi_email_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_email_template(Ctx, EmailTemplateId, OpenapiEmailTemplateUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/email-templates/", EmailTemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiEmailTemplateUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


