-module(openapi_packing_api).

-export([complete_packing/3, complete_packing/4,
         get_packing_queue/1, get_packing_queue/2,
         print_delivery_note/2, print_delivery_note/3,
         print_label/2, print_label/3,
         record_packing_video/3, record_packing_video/4]).

-define(BASE_URL, <<"">>).

%% @doc Mark packing as complete and transition order to shipped
%% 
-spec complete_packing(ctx:ctx(), binary(), openapi_packing_complete_request:openapi_packing_complete_request()) -> {ok, openapi_packing_complete_response:openapi_packing_complete_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
complete_packing(Ctx, OrderNumber, OpenapiPackingCompleteRequest) ->
    complete_packing(Ctx, OrderNumber, OpenapiPackingCompleteRequest, #{}).

-spec complete_packing(ctx:ctx(), binary(), openapi_packing_complete_request:openapi_packing_complete_request(), maps:map()) -> {ok, openapi_packing_complete_response:openapi_packing_complete_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
complete_packing(Ctx, OrderNumber, OpenapiPackingCompleteRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/packing/", OrderNumber, "/complete"],
    QS = [],
    Headers = [],
    Body1 = OpenapiPackingCompleteRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the packing queue - orders ready for packing
%% 
-spec get_packing_queue(ctx:ctx()) -> {ok, openapi_packing_queue:openapi_packing_queue(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_packing_queue(Ctx) ->
    get_packing_queue(Ctx, #{}).

-spec get_packing_queue(ctx:ctx(), maps:map()) -> {ok, openapi_packing_queue:openapi_packing_queue(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_packing_queue(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/packing/queue"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'page_size', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Print delivery note (Lieferschein) for an order
%% 
-spec print_delivery_note(ctx:ctx(), binary()) -> {ok, openapi_print_delivery_note_response:openapi_print_delivery_note_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
print_delivery_note(Ctx, OrderNumber) ->
    print_delivery_note(Ctx, OrderNumber, #{}).

-spec print_delivery_note(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_print_delivery_note_response:openapi_print_delivery_note_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
print_delivery_note(Ctx, OrderNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/packing/", OrderNumber, "/print-delivery-note"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Print shipping label for an order
%% 
-spec print_label(ctx:ctx(), binary()) -> {ok, openapi_print_label_response:openapi_print_label_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
print_label(Ctx, OrderNumber) ->
    print_label(Ctx, OrderNumber, #{}).

-spec print_label(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_print_label_response:openapi_print_label_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
print_label(Ctx, OrderNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/packing/", OrderNumber, "/print-label"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Record video of packing process
%% 
-spec record_packing_video(ctx:ctx(), binary(), openapi_any_type:openapi_any_type()) -> {ok, openapi_packing_video_response:openapi_packing_video_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
record_packing_video(Ctx, OrderNumber, Body) ->
    record_packing_video(Ctx, OrderNumber, Body, #{}).

-spec record_packing_video(ctx:ctx(), binary(), openapi_any_type:openapi_any_type(), maps:map()) -> {ok, openapi_packing_video_response:openapi_packing_video_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
record_packing_video(Ctx, OrderNumber, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/api/v1/packing/", OrderNumber, "/record-video"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


