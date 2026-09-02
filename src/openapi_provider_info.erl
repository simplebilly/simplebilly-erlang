-module(openapi_provider_info).

-export([encode/1]).

-export_type([openapi_provider_info/0]).

-type openapi_provider_info() ::
    #{ 'display_name' := binary(),
       'name' := binary(),
       'requires_api_key' := boolean(),
       'services' := list(),
       'supports_label_creation' := boolean(),
       'supports_rate_estimation' := boolean(),
       'supports_tracking' := boolean()
     }.

encode(#{ 'display_name' := DisplayName,
          'name' := Name,
          'requires_api_key' := RequiresApiKey,
          'services' := Services,
          'supports_label_creation' := SupportsLabelCreation,
          'supports_rate_estimation' := SupportsRateEstimation,
          'supports_tracking' := SupportsTracking
        }) ->
    #{ 'display_name' => DisplayName,
       'name' => Name,
       'requires_api_key' => RequiresApiKey,
       'services' => Services,
       'supports_label_creation' => SupportsLabelCreation,
       'supports_rate_estimation' => SupportsRateEstimation,
       'supports_tracking' => SupportsTracking
     }.
