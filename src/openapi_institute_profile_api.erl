-module(openapi_institute_profile_api).

-export([get_institute_profile/1, get_institute_profile/2,
         update_institute_profile/2, update_institute_profile/3]).

-define(BASE_URL, <<"">>).

%% @doc Current institute profile (created with defaults when missing).
%% 
-spec get_institute_profile(ctx:ctx()) -> {ok, openapi_institute_profile:openapi_institute_profile(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_institute_profile(Ctx) ->
    get_institute_profile(Ctx, #{}).

-spec get_institute_profile(ctx:ctx(), maps:map()) -> {ok, openapi_institute_profile:openapi_institute_profile(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_institute_profile(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/api/v1/institute-profile"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update the institute profile (institute_type and/or kapitalmarktorientiert).
%% 
-spec update_institute_profile(ctx:ctx(), openapi_institute_profile_update:openapi_institute_profile_update()) -> {ok, openapi_institute_profile:openapi_institute_profile(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_institute_profile(Ctx, OpenapiInstituteProfileUpdate) ->
    update_institute_profile(Ctx, OpenapiInstituteProfileUpdate, #{}).

-spec update_institute_profile(ctx:ctx(), openapi_institute_profile_update:openapi_institute_profile_update(), maps:map()) -> {ok, openapi_institute_profile:openapi_institute_profile(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
update_institute_profile(Ctx, OpenapiInstituteProfileUpdate, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/api/v1/institute-profile"],
    QS = [],
    Headers = [],
    Body1 = OpenapiInstituteProfileUpdate,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


