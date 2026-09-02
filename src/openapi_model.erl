-module(openapi_model).

-export([encode/1]).

-export_type([openapi_model/0]).

-type openapi_model() ::
    #{ 'backup_codes' := list(),
       'created_at' := openapi_date_time:openapi_date_time(),
       'deleted_at' => openapi_date_time:openapi_date_time(),
       'email' := binary(),
       'email_verified' := boolean(),
       'id' := openapi_u_uid:openapi_u_uid(),
       'is_active' := boolean(),
       'is_totp_enabled' := boolean(),
       'last_login' => openapi_date_time:openapi_date_time(),
       'name' := binary(),
       'oauth_id' => binary(),
       'oauth_provider' => binary(),
       'password_changed_at' => openapi_date_time:openapi_date_time(),
       'password_hash' := binary(),
       'picture' => binary(),
       'privacy_accepted_at' => openapi_date_time:openapi_date_time(),
       'totp_secret' => binary(),
       'updated_at' := openapi_date_time:openapi_date_time()
     }.

encode(#{ 'backup_codes' := BackupCodes,
          'created_at' := CreatedAt,
          'deleted_at' := DeletedAt,
          'email' := Email,
          'email_verified' := EmailVerified,
          'id' := Id,
          'is_active' := IsActive,
          'is_totp_enabled' := IsTotpEnabled,
          'last_login' := LastLogin,
          'name' := Name,
          'oauth_id' := OauthId,
          'oauth_provider' := OauthProvider,
          'password_changed_at' := PasswordChangedAt,
          'password_hash' := PasswordHash,
          'picture' := Picture,
          'privacy_accepted_at' := PrivacyAcceptedAt,
          'totp_secret' := TotpSecret,
          'updated_at' := UpdatedAt
        }) ->
    #{ 'backup_codes' => BackupCodes,
       'created_at' => CreatedAt,
       'deleted_at' => DeletedAt,
       'email' => Email,
       'email_verified' => EmailVerified,
       'id' => Id,
       'is_active' => IsActive,
       'is_totp_enabled' => IsTotpEnabled,
       'last_login' => LastLogin,
       'name' => Name,
       'oauth_id' => OauthId,
       'oauth_provider' => OauthProvider,
       'password_changed_at' => PasswordChangedAt,
       'password_hash' => PasswordHash,
       'picture' => Picture,
       'privacy_accepted_at' => PrivacyAcceptedAt,
       'totp_secret' => TotpSecret,
       'updated_at' => UpdatedAt
     }.
