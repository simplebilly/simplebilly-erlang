-module(openapi_posting_category_update).

-export([encode/1]).

-export_type([openapi_posting_category_update/0]).

-type openapi_posting_category_update() ::
    #{ 'accountNumber' => binary(),
       'accountNumberSkr03' => binary(),
       'accountNumberSkr04' => binary(),
       'accountNumberSkr49' => binary(),
       'categoryType' => openapi_posting_category_type:openapi_posting_category_type(),
       'createdAt' => openapi_date_time:openapi_date_time(),
       'defaultVatRate' => integer(),
       'description' => binary(),
       'eksCategory' => binary(),
       'euVatLine' => integer(),
       'inputVatPercentage' => binary(),
       'isActive' => boolean(),
       'isSystem' => boolean(),
       'name' => binary(),
       'skrVersion' => binary(),
       'updatedAt' => openapi_date_time:openapi_date_time(),
       'userModifiedSkr03' => boolean(),
       'userModifiedSkr04' => boolean()
     }.

encode(#{ 'accountNumber' := AccountNumber,
          'accountNumberSkr03' := AccountNumberSkr03,
          'accountNumberSkr04' := AccountNumberSkr04,
          'accountNumberSkr49' := AccountNumberSkr49,
          'categoryType' := CategoryType,
          'createdAt' := CreatedAt,
          'defaultVatRate' := DefaultVatRate,
          'description' := Description,
          'eksCategory' := EksCategory,
          'euVatLine' := EuVatLine,
          'inputVatPercentage' := InputVatPercentage,
          'isActive' := IsActive,
          'isSystem' := IsSystem,
          'name' := Name,
          'skrVersion' := SkrVersion,
          'updatedAt' := UpdatedAt,
          'userModifiedSkr03' := UserModifiedSkr03,
          'userModifiedSkr04' := UserModifiedSkr04
        }) ->
    #{ 'accountNumber' => AccountNumber,
       'accountNumberSkr03' => AccountNumberSkr03,
       'accountNumberSkr04' => AccountNumberSkr04,
       'accountNumberSkr49' => AccountNumberSkr49,
       'categoryType' => CategoryType,
       'createdAt' => CreatedAt,
       'defaultVatRate' => DefaultVatRate,
       'description' => Description,
       'eksCategory' => EksCategory,
       'euVatLine' => EuVatLine,
       'inputVatPercentage' => InputVatPercentage,
       'isActive' => IsActive,
       'isSystem' => IsSystem,
       'name' => Name,
       'skrVersion' => SkrVersion,
       'updatedAt' => UpdatedAt,
       'userModifiedSkr03' => UserModifiedSkr03,
       'userModifiedSkr04' => UserModifiedSkr04
     }.
