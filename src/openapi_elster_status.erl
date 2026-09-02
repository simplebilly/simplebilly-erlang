-module(openapi_elster_status).

-export([encode/1]).

-export_type([openapi_elster_status/0]).

-type openapi_elster_status() ::
    #{ 'cert_configured' := boolean(),
       'eric_available' := boolean(),
       'eric_version' => binary(),
       'feature_enabled' := boolean(),
       'hint' := binary(),
       'mode' := binary(),
       'vendor_id_configured' := boolean()
     }.

encode(#{ 'cert_configured' := CertConfigured,
          'eric_available' := EricAvailable,
          'eric_version' := EricVersion,
          'feature_enabled' := FeatureEnabled,
          'hint' := Hint,
          'mode' := Mode,
          'vendor_id_configured' := VendorIdConfigured
        }) ->
    #{ 'cert_configured' => CertConfigured,
       'eric_available' => EricAvailable,
       'eric_version' => EricVersion,
       'feature_enabled' => FeatureEnabled,
       'hint' => Hint,
       'mode' => Mode,
       'vendor_id_configured' => VendorIdConfigured
     }.
