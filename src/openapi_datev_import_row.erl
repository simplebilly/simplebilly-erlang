-module(openapi_datev_import_row).

-export([encode/1]).

-export_type([openapi_datev_import_row/0]).

-type openapi_datev_import_row() ::
    #{ 'account' := binary(),
       'amount' := binary(),
       'base_amount' := binary(),
       'base_currency' := binary(),
       'booking_text' := binary(),
       'bu_key' := binary(),
       'cost_center1' := binary(),
       'cost_center2' := binary(),
       'currency' := binary(),
       'debit_credit' := binary(),
       'discount' := binary(),
       'document_date' := binary(),
       'document_field2' := binary(),
       'document_number' := binary(),
       'eu_country_vat_id' := binary(),
       'eu_tax_rate' := binary(),
       'exchange_rate' := binary(),
       'opposite_account' := binary()
     }.

encode(#{ 'account' := Account,
          'amount' := Amount,
          'base_amount' := BaseAmount,
          'base_currency' := BaseCurrency,
          'booking_text' := BookingText,
          'bu_key' := BuKey,
          'cost_center1' := CostCenter1,
          'cost_center2' := CostCenter2,
          'currency' := Currency,
          'debit_credit' := DebitCredit,
          'discount' := Discount,
          'document_date' := DocumentDate,
          'document_field2' := DocumentField2,
          'document_number' := DocumentNumber,
          'eu_country_vat_id' := EuCountryVatId,
          'eu_tax_rate' := EuTaxRate,
          'exchange_rate' := ExchangeRate,
          'opposite_account' := OppositeAccount
        }) ->
    #{ 'account' => Account,
       'amount' => Amount,
       'base_amount' => BaseAmount,
       'base_currency' => BaseCurrency,
       'booking_text' => BookingText,
       'bu_key' => BuKey,
       'cost_center1' => CostCenter1,
       'cost_center2' => CostCenter2,
       'currency' => Currency,
       'debit_credit' => DebitCredit,
       'discount' => Discount,
       'document_date' => DocumentDate,
       'document_field2' => DocumentField2,
       'document_number' => DocumentNumber,
       'eu_country_vat_id' => EuCountryVatId,
       'eu_tax_rate' => EuTaxRate,
       'exchange_rate' => ExchangeRate,
       'opposite_account' => OppositeAccount
     }.
