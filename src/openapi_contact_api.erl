-module(openapi_contact_api).

-export([contact_schema/1, contact_schema/2,
         contact_timeline/2, contact_timeline/3,
         create_contact/2, create_contact/3,
         delete_contact/2, delete_contact/3,
         get_contact/2, get_contact/3,
         list_contacts/1, list_contacts/2,
         sales_volume/1, sales_volume/2,
         update_contact/3, update_contact/4]).

-define(BASE_URL, <<"">>).

%% @doc Serve JSON Schema for client-side validation
%% 
-spec contact_schema(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
contact_schema(Ctx) ->
    contact_schema(Ctx, #{}).

-spec contact_schema(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
contact_schema(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/contacts/schema"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the full per-contact timeline (Xentral §4.6/4.7).
%% Aggregates communications, quotations, orders, invoices and uploaded documents for a contact, merged into a single reverse-chronological feed.
-spec contact_timeline(ctx:ctx(), binary()) -> {ok, openapi_contact_timeline_response:openapi_contact_timeline_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
contact_timeline(Ctx, ContactId) ->
    contact_timeline(Ctx, ContactId, #{}).

-spec contact_timeline(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_contact_timeline_response:openapi_contact_timeline_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
contact_timeline(Ctx, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/contacts/", ContactId, "/timeline"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create contact
%% 
-spec create_contact(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_contact:openapi_contact(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_contact(Ctx, Body) ->
    create_contact(Ctx, Body, #{}).

-spec create_contact(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_contact:openapi_contact(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
create_contact(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/contacts"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Soft-delete contact
%% 
-spec delete_contact(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_contact(Ctx, ContactId) ->
    delete_contact(Ctx, ContactId, #{}).

-spec delete_contact(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_contact(Ctx, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/api/v1/contacts/", ContactId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get single contact
%% 
-spec get_contact(ctx:ctx(), binary()) -> {ok, openapi_contact:openapi_contact(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_contact(Ctx, ContactId) ->
    get_contact(Ctx, ContactId, #{}).

-spec get_contact(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_contact:openapi_contact(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_contact(Ctx, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/contacts/", ContactId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List contacts with search, type filter, and pagination
%% 
-spec list_contacts(ctx:ctx()) -> {ok, [openapi_contact:openapi_contact()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_contacts(Ctx) ->
    list_contacts(Ctx, #{}).

-spec list_contacts(ctx:ctx(), maps:map()) -> {ok, [openapi_contact:openapi_contact()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
list_contacts(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/contacts"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'contact_type', 'tag'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sales volume per contact
%% 
-spec sales_volume(ctx:ctx()) -> {ok, openapi_sales_volume_report:openapi_sales_volume_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sales_volume(Ctx) ->
    sales_volume(Ctx, #{}).

-spec sales_volume(ctx:ctx(), maps:map()) -> {ok, openapi_sales_volume_report:openapi_sales_volume_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
sales_volume(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/contacts/sales-volume"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search', 'contact_type', 'tag'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update contact
%% 
-spec update_contact(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_contact:openapi_contact(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_contact(Ctx, ContactId, Body) ->
    update_contact(Ctx, ContactId, Body, #{}).

-spec update_contact(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_contact:openapi_contact(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_contact(Ctx, ContactId, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/contacts/", ContactId, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


