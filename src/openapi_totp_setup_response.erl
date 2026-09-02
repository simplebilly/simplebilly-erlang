-module(openapi_totp_setup_response).

-export([encode/1]).

-export_type([openapi_totp_setup_response/0]).

-type openapi_totp_setup_response() ::
    #{ 'backup_codes' := list(),
       'qr_code_url' := binary(),
       'secret' := binary()
     }.

encode(#{ 'backup_codes' := BackupCodes,
          'qr_code_url' := QrCodeUrl,
          'secret' := Secret
        }) ->
    #{ 'backup_codes' => BackupCodes,
       'qr_code_url' => QrCodeUrl,
       'secret' => Secret
     }.
