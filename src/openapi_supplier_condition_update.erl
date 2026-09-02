-module(openapi_supplier_condition_update).

-export([encode/1]).

-export_type([openapi_supplier_condition_update/0]).

-type openapi_supplier_condition_update() ::
    #{ 'currency' => binary(),
       'deliveryTerms' => binary(),
       'earlyPaymentDiscountPercent' => binary(),
       'isDefault' => boolean(),
       'minimumOrderValue' => binary(),
       'notes' => binary(),
       'paymentDueDays' => integer(),
       'paymentTerms' => binary(),
       'supplierContactId' => binary(),
       'supplierName' => binary(),
       'volumeDiscountTiers' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'currency' := Currency,
          'deliveryTerms' := DeliveryTerms,
          'earlyPaymentDiscountPercent' := EarlyPaymentDiscountPercent,
          'isDefault' := IsDefault,
          'minimumOrderValue' := MinimumOrderValue,
          'notes' := Notes,
          'paymentDueDays' := PaymentDueDays,
          'paymentTerms' := PaymentTerms,
          'supplierContactId' := SupplierContactId,
          'supplierName' := SupplierName,
          'volumeDiscountTiers' := VolumeDiscountTiers
        }) ->
    #{ 'currency' => Currency,
       'deliveryTerms' => DeliveryTerms,
       'earlyPaymentDiscountPercent' => EarlyPaymentDiscountPercent,
       'isDefault' => IsDefault,
       'minimumOrderValue' => MinimumOrderValue,
       'notes' => Notes,
       'paymentDueDays' => PaymentDueDays,
       'paymentTerms' => PaymentTerms,
       'supplierContactId' => SupplierContactId,
       'supplierName' => SupplierName,
       'volumeDiscountTiers' => VolumeDiscountTiers
     }.
