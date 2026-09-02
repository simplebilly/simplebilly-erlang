-module(openapi_platform_info).

-export([encode/1]).

-export_type([openapi_platform_info/0]).

-type openapi_platform_info() ::
    #{ 'author' := binary(),
       'changelog' := list(),
       'config_field_names' := list(),
       'config_fields' := list(),
       'display_name' := binary(),
       'platform' := binary(),
       'pricing' := openapi_plugin_pricing:openapi_plugin_pricing(),
       'supported_entities' := list(),
       'supports_export' := boolean(),
       'supports_import' := boolean(),
       'supports_oauth' := boolean(),
       'version' := binary()
     }.

encode(#{ 'author' := Author,
          'changelog' := Changelog,
          'config_field_names' := ConfigFieldNames,
          'config_fields' := ConfigFields,
          'display_name' := DisplayName,
          'platform' := Platform,
          'pricing' := Pricing,
          'supported_entities' := SupportedEntities,
          'supports_export' := SupportsExport,
          'supports_import' := SupportsImport,
          'supports_oauth' := SupportsOauth,
          'version' := Version
        }) ->
    #{ 'author' => Author,
       'changelog' => Changelog,
       'config_field_names' => ConfigFieldNames,
       'config_fields' => ConfigFields,
       'display_name' => DisplayName,
       'platform' => Platform,
       'pricing' => Pricing,
       'supported_entities' => SupportedEntities,
       'supports_export' => SupportsExport,
       'supports_import' => SupportsImport,
       'supports_oauth' => SupportsOauth,
       'version' => Version
     }.
