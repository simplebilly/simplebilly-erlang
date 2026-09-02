-module(openapi_posting_category).

-export([encode/1]).

-export_type([openapi_posting_category/0]).

-type openapi_posting_category() ::
    #{ 'account_number' => binary(),
       'account_number_skr03' => binary(),
       'account_number_skr04' => binary(),
       'account_number_skr49' => binary(),
       'category_id' := binary(),
       'default_vat_rate' := integer(),
       'description' => binary(),
       'eks_category' => binary(),
       'is_active' := boolean(),
       'is_system' := boolean(),
       'name' := binary(),
       'skr_version' := binary(),
       'type' := binary()
     }.

encode(#{ 'account_number' := AccountNumber,
          'account_number_skr03' := AccountNumberSkr03,
          'account_number_skr04' := AccountNumberSkr04,
          'account_number_skr49' := AccountNumberSkr49,
          'category_id' := CategoryId,
          'default_vat_rate' := DefaultVatRate,
          'description' := Description,
          'eks_category' := EksCategory,
          'is_active' := IsActive,
          'is_system' := IsSystem,
          'name' := Name,
          'skr_version' := SkrVersion,
          'type' := Type
        }) ->
    #{ 'account_number' => AccountNumber,
       'account_number_skr03' => AccountNumberSkr03,
       'account_number_skr04' => AccountNumberSkr04,
       'account_number_skr49' => AccountNumberSkr49,
       'category_id' => CategoryId,
       'default_vat_rate' => DefaultVatRate,
       'description' => Description,
       'eks_category' => EksCategory,
       'is_active' => IsActive,
       'is_system' => IsSystem,
       'name' => Name,
       'skr_version' => SkrVersion,
       'type' => Type
     }.
