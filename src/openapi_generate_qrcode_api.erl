-module(openapi_generate_qrcode_api).

-export([generate_qrcode_api/3, generate_qrcode_api/4]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec generate_qrcode_api(ctx:ctx(), binary(), binary()) -> {ok, openapi_q_r_code_response:openapi_q_r_code_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_qrcode_api(Ctx, Iban, Id) ->
    generate_qrcode_api(Ctx, Iban, Id, #{}).

-spec generate_qrcode_api(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_q_r_code_response:openapi_q_r_code_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
generate_qrcode_api(Ctx, Iban, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/invoices/", Id, "/qrcode"],
    QS = lists:flatten([{<<"iban">>, Iban}])++openapi_utils:optional_params(['holder_name', 'bic', 'amount', 'reference', 'purpose'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


