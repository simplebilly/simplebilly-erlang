-module(openapi_lead_api).

-export([list_leads_api/1, list_leads_api/2,
         update_lead_api/3, update_lead_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec list_leads_api(ctx:ctx()) -> {ok, [openapi_lead:openapi_lead()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_leads_api(Ctx) ->
    list_leads_api(Ctx, #{}).

-spec list_leads_api(ctx:ctx(), maps:map()) -> {ok, [openapi_lead:openapi_lead()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_leads_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/support/leads"],
    QS = lists:flatten([])++openapi_utils:optional_params(['status', 'source', 'search', 'page', 'page_size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec update_lead_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_lead_update:openapi_lead_update()) -> {ok, openapi_lead:openapi_lead(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_lead_api(Ctx, LeadId, OpenapiLeadUpdate) ->
    update_lead_api(Ctx, LeadId, OpenapiLeadUpdate, #{}).

-spec update_lead_api(ctx:ctx(), openapi_u_uid:openapi_u_uid(), openapi_lead_update:openapi_lead_update(), maps:map()) -> {ok, openapi_lead:openapi_lead(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_lead_api(Ctx, LeadId, OpenapiLeadUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/support/leads/", LeadId, ""],
    QS = [],
    Headers = [],
    Body1 = OpenapiLeadUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


