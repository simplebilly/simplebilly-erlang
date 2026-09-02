-module(openapi_warehouse).

-export([encode/1]).

-export_type([openapi_warehouse/0]).

-type openapi_warehouse() ::
    #{ 'addressCity' => binary(),
       'addressCountry' => openapi_country_code:openapi_country_code(),
       'addressStreet' => binary(),
       'addressZip' => binary(),
       'binLocations' => openapi_any_type:openapi_any_type(),
       'code' := binary(),
       'isActive' => boolean(),
       'isDefault' => boolean(),
       'name' := binary(),
       'notes' => binary()
     }.

encode(#{ 'addressCity' := AddressCity,
          'addressCountry' := AddressCountry,
          'addressStreet' := AddressStreet,
          'addressZip' := AddressZip,
          'binLocations' := BinLocations,
          'code' := Code,
          'isActive' := IsActive,
          'isDefault' := IsDefault,
          'name' := Name,
          'notes' := Notes
        }) ->
    #{ 'addressCity' => AddressCity,
       'addressCountry' => AddressCountry,
       'addressStreet' => AddressStreet,
       'addressZip' => AddressZip,
       'binLocations' => BinLocations,
       'code' => Code,
       'isActive' => IsActive,
       'isDefault' => IsDefault,
       'name' => Name,
       'notes' => Notes
     }.
