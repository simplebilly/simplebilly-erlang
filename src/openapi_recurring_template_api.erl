-module(openapi_recurring_template_api).

-export([create_recurring_template/2, create_recurring_template/3,
         delete_recurring_template/2, delete_recurring_template/3,
         get_recurring_template/2, get_recurring_template/3,
         list_recurring_templates/1, list_recurring_templates/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec create_recurring_template(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_recurring_template:openapi_recurring_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_recurring_template(Ctx, Body) ->
    create_recurring_template(Ctx, Body, #{}).

-spec create_recurring_template(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_recurring_template:openapi_recurring_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_recurring_template(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/recurring-templates"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_recurring_template(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_recurring_template(Ctx, TemplateId) ->
    delete_recurring_template(Ctx, TemplateId, #{}).

-spec delete_recurring_template(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_recurring_template(Ctx, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/recurring-templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_recurring_template(ctx:ctx(), binary()) -> {ok, openapi_recurring_template:openapi_recurring_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_recurring_template(Ctx, TemplateId) ->
    get_recurring_template(Ctx, TemplateId, #{}).

-spec get_recurring_template(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_recurring_template:openapi_recurring_template(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_recurring_template(Ctx, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/recurring-templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec list_recurring_templates(ctx:ctx()) -> {ok, [openapi_recurring_template:openapi_recurring_template()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_recurring_templates(Ctx) ->
    list_recurring_templates(Ctx, #{}).

-spec list_recurring_templates(ctx:ctx(), maps:map()) -> {ok, [openapi_recurring_template:openapi_recurring_template()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_recurring_templates(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/recurring-templates/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


