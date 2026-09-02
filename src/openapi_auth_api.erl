-module(openapi_auth_api).

-export([accept_invite/2, accept_invite/3,
         forgot_password/2, forgot_password/3,
         login/2, login/3,
         logout/1, logout/2,
         magic_link_login/2, magic_link_login/3,
         magic_link_verify/2, magic_link_verify/3,
         register/2, register/3,
         reset_password/2, reset_password/3,
         totp_enable/2, totp_enable/3,
         totp_setup/1, totp_setup/2,
         verify_email/2, verify_email/3]).

-define(BASE_URL, <<"">>).

%% @doc Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.
%% 
-spec accept_invite(ctx:ctx(), openapi_accept_invite_request:openapi_accept_invite_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
accept_invite(Ctx, OpenapiAcceptInviteRequest) ->
    accept_invite(Ctx, OpenapiAcceptInviteRequest, #{}).

-spec accept_invite(ctx:ctx(), openapi_accept_invite_request:openapi_accept_invite_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
accept_invite(Ctx, OpenapiAcceptInviteRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/accept-invite"],
    QS = [],
    Headers = [],
    Body1 = OpenapiAcceptInviteRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a password reset email to the user
%% 
-spec forgot_password(ctx:ctx(), openapi_forgot_password_request:openapi_forgot_password_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
forgot_password(Ctx, OpenapiForgotPasswordRequest) ->
    forgot_password(Ctx, OpenapiForgotPasswordRequest, #{}).

-spec forgot_password(ctx:ctx(), openapi_forgot_password_request:openapi_forgot_password_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
forgot_password(Ctx, OpenapiForgotPasswordRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/forgot-password"],
    QS = [],
    Headers = [],
    Body1 = OpenapiForgotPasswordRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Authenticate a user with email + password (optional TOTP)
%% 
-spec login(ctx:ctx(), openapi_login_request:openapi_login_request()) -> {ok, openapi_auth_response:openapi_auth_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
login(Ctx, OpenapiLoginRequest) ->
    login(Ctx, OpenapiLoginRequest, #{}).

-spec login(ctx:ctx(), openapi_login_request:openapi_login_request(), maps:map()) -> {ok, openapi_auth_response:openapi_auth_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
login(Ctx, OpenapiLoginRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/login"],
    QS = [],
    Headers = [],
    Body1 = OpenapiLoginRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Log out the current user (kills the assay session)
%% 
-spec logout(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
logout(Ctx) ->
    logout(Ctx, #{}).

-spec logout(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
logout(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/logout"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Request a magic link login (sends an email with a one-time link)
%% 
-spec magic_link_login(ctx:ctx(), openapi_magic_link_request:openapi_magic_link_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
magic_link_login(Ctx, OpenapiMagicLinkRequest) ->
    magic_link_login(Ctx, OpenapiMagicLinkRequest, #{}).

-spec magic_link_login(ctx:ctx(), openapi_magic_link_request:openapi_magic_link_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
magic_link_login(Ctx, OpenapiMagicLinkRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/magic-link"],
    QS = [],
    Headers = [],
    Body1 = OpenapiMagicLinkRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify a magic link token and log the user in
%% 
-spec magic_link_verify(ctx:ctx(), openapi_magic_link_verify_request:openapi_magic_link_verify_request()) -> {ok, openapi_auth_response:openapi_auth_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
magic_link_verify(Ctx, OpenapiMagicLinkVerifyRequest) ->
    magic_link_verify(Ctx, OpenapiMagicLinkVerifyRequest, #{}).

-spec magic_link_verify(ctx:ctx(), openapi_magic_link_verify_request:openapi_magic_link_verify_request(), maps:map()) -> {ok, openapi_auth_response:openapi_auth_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
magic_link_verify(Ctx, OpenapiMagicLinkVerifyRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/magic-link/verify"],
    QS = [],
    Headers = [],
    Body1 = OpenapiMagicLinkVerifyRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Register a new user account
%% 
-spec register(ctx:ctx(), openapi_register_request:openapi_register_request()) -> {ok, openapi_auth_response:openapi_auth_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
register(Ctx, OpenapiRegisterRequest) ->
    register(Ctx, OpenapiRegisterRequest, #{}).

-spec register(ctx:ctx(), openapi_register_request:openapi_register_request(), maps:map()) -> {ok, openapi_auth_response:openapi_auth_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
register(Ctx, OpenapiRegisterRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/register"],
    QS = [],
    Headers = [],
    Body1 = OpenapiRegisterRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reset the user's password using a reset token
%% 
-spec reset_password(ctx:ctx(), openapi_reset_password_request:openapi_reset_password_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
reset_password(Ctx, OpenapiResetPasswordRequest) ->
    reset_password(Ctx, OpenapiResetPasswordRequest, #{}).

-spec reset_password(ctx:ctx(), openapi_reset_password_request:openapi_reset_password_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
reset_password(Ctx, OpenapiResetPasswordRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/reset-password"],
    QS = [],
    Headers = [],
    Body1 = OpenapiResetPasswordRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Enable TOTP two-factor authentication by verifying a code
%% 
-spec totp_enable(ctx:ctx(), openapi_totp_enable_request:openapi_totp_enable_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
totp_enable(Ctx, OpenapiTotpEnableRequest) ->
    totp_enable(Ctx, OpenapiTotpEnableRequest, #{}).

-spec totp_enable(ctx:ctx(), openapi_totp_enable_request:openapi_totp_enable_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
totp_enable(Ctx, OpenapiTotpEnableRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/totp/enable"],
    QS = [],
    Headers = [],
    Body1 = OpenapiTotpEnableRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set up TOTP two-factor authentication (generates secret + backup codes)
%% 
-spec totp_setup(ctx:ctx()) -> {ok, openapi_totp_setup_response:openapi_totp_setup_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
totp_setup(Ctx) ->
    totp_setup(Ctx, #{}).

-spec totp_setup(ctx:ctx(), maps:map()) -> {ok, openapi_totp_setup_response:openapi_totp_setup_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
totp_setup(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/auth/totp/setup"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify a user's email address using a verification token
%% 
-spec verify_email(ctx:ctx(), openapi_verify_email_request:openapi_verify_email_request()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
verify_email(Ctx, OpenapiVerifyEmailRequest) ->
    verify_email(Ctx, OpenapiVerifyEmailRequest, #{}).

-spec verify_email(ctx:ctx(), openapi_verify_email_request:openapi_verify_email_request(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
verify_email(Ctx, OpenapiVerifyEmailRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/auth/verify-email"],
    QS = [],
    Headers = [],
    Body1 = OpenapiVerifyEmailRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


