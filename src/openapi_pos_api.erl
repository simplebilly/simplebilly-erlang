-module(openapi_pos_api).

-export([pos_billing/1, pos_billing/2,
         pos_create_order/2, pos_create_order/3,
         pos_create_register/2, pos_create_register/3,
         pos_create_table/2, pos_create_table/3,
         pos_disable_register/2, pos_disable_register/3,
         pos_free_table/2, pos_free_table/3,
         pos_kasse_closing/2, pos_kasse_closing/3,
         pos_kasse_entries/1, pos_kasse_entries/2,
         pos_kasse_export/1, pos_kasse_export/2,
         pos_kasse_pay_in_out/2, pos_kasse_pay_in_out/3,
         pos_list_orders/1, pos_list_orders/2,
         pos_list_products/1, pos_list_products/2,
         pos_list_registers/1, pos_list_registers/2,
         pos_list_tables/1, pos_list_tables/2,
         pos_order_print/2, pos_order_print/3,
         pos_order_receipt/2, pos_order_receipt/3,
         pos_pay_order/3, pos_pay_order/4,
         pos_sumup_checkout/2, pos_sumup_checkout/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec pos_billing(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_billing(Ctx) ->
    pos_billing(Ctx, #{}).

-spec pos_billing(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_billing(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/billing"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_create_order(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_create_order(Ctx, Body) ->
    pos_create_order(Ctx, Body, #{}).

-spec pos_create_order(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_create_order(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/orders"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_create_register(ctx:ctx(), openapi_pos_register_create:openapi_pos_register_create()) -> {ok, openapi_pos_register:openapi_pos_register(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_create_register(Ctx, OpenapiPosRegisterCreate) ->
    pos_create_register(Ctx, OpenapiPosRegisterCreate, #{}).

-spec pos_create_register(ctx:ctx(), openapi_pos_register_create:openapi_pos_register_create(), maps:map()) -> {ok, openapi_pos_register:openapi_pos_register(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_create_register(Ctx, OpenapiPosRegisterCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/registers"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPosRegisterCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_create_table(ctx:ctx(), openapi_pos_table_create:openapi_pos_table_create()) -> {ok, openapi_pos_table:openapi_pos_table(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_create_table(Ctx, OpenapiPosTableCreate) ->
    pos_create_table(Ctx, OpenapiPosTableCreate, #{}).

-spec pos_create_table(ctx:ctx(), openapi_pos_table_create:openapi_pos_table_create(), maps:map()) -> {ok, openapi_pos_table:openapi_pos_table(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_create_table(Ctx, OpenapiPosTableCreate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/tables"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPosTableCreate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_disable_register(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_pos_register:openapi_pos_register(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_disable_register(Ctx, Id) ->
    pos_disable_register(Ctx, Id, #{}).

-spec pos_disable_register(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_pos_register:openapi_pos_register(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_disable_register(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/registers/", Id, "/disable"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_free_table(ctx:ctx(), openapi_u_uid:openapi_u_uid()) -> {ok, openapi_pos_table:openapi_pos_table(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_free_table(Ctx, Id) ->
    pos_free_table(Ctx, Id, #{}).

-spec pos_free_table(ctx:ctx(), openapi_u_uid:openapi_u_uid(), maps:map()) -> {ok, openapi_pos_table:openapi_pos_table(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_free_table(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/tables/", Id, "/free"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_kasse_closing(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_closing(Ctx, Body) ->
    pos_kasse_closing(Ctx, Body, #{}).

-spec pos_kasse_closing(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_closing(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/kasse/closing"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_kasse_entries(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_entries(Ctx) ->
    pos_kasse_entries(Ctx, #{}).

-spec pos_kasse_entries(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_entries(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/kasse/entries"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_kasse_export(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_export(Ctx) ->
    pos_kasse_export(Ctx, #{}).

-spec pos_kasse_export(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_export(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/kasse/export"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_kasse_pay_in_out(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_pay_in_out(Ctx, Body) ->
    pos_kasse_pay_in_out(Ctx, Body, #{}).

-spec pos_kasse_pay_in_out(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_kasse_pay_in_out(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/kasse/pay-in-out"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_list_orders(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_orders(Ctx) ->
    pos_list_orders(Ctx, #{}).

-spec pos_list_orders(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_orders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/orders"],
    QS = lists:flatten([])++openapi_utils:optional_params(['status'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_list_products(ctx:ctx()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_products(Ctx) ->
    pos_list_products(Ctx, #{}).

-spec pos_list_products(ctx:ctx(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_products(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/products"],
    QS = lists:flatten([])++openapi_utils:optional_params(['q'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_list_registers(ctx:ctx()) -> {ok, [openapi_pos_register:openapi_pos_register()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_registers(Ctx) ->
    pos_list_registers(Ctx, #{}).

-spec pos_list_registers(ctx:ctx(), maps:map()) -> {ok, [openapi_pos_register:openapi_pos_register()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_registers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/registers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_list_tables(ctx:ctx()) -> {ok, [openapi_pos_table:openapi_pos_table()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_tables(Ctx) ->
    pos_list_tables(Ctx, #{}).

-spec pos_list_tables(ctx:ctx(), maps:map()) -> {ok, [openapi_pos_table:openapi_pos_table()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_list_tables(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/tables"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_order_print(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_order_print(Ctx, OrderNumber) ->
    pos_order_print(Ctx, OrderNumber, #{}).

-spec pos_order_print(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_order_print(Ctx, OrderNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/orders/", OrderNumber, "/print"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_order_receipt(ctx:ctx(), binary()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_order_receipt(Ctx, OrderNumber) ->
    pos_order_receipt(Ctx, OrderNumber, #{}).

-spec pos_order_receipt(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_order_receipt(Ctx, OrderNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/pos/orders/", OrderNumber, "/receipt"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_pay_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_pay_order(Ctx, OrderNumber, Body) ->
    pos_pay_order(Ctx, OrderNumber, Body, #{}).

-spec pos_pay_order(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_pay_order(Ctx, OrderNumber, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/orders/", OrderNumber, "/pay"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec pos_sumup_checkout(ctx:ctx(), openapi_any_type:openapi_any_type()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_sumup_checkout(Ctx, Body) ->
    pos_sumup_checkout(Ctx, Body, #{}).

-spec pos_sumup_checkout(ctx:ctx(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_any_type:openapi_any_type(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
pos_sumup_checkout(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/pos/sumup/checkout"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


