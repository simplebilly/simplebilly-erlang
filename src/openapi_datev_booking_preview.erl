-module(openapi_datev_booking_preview).

-export([encode/1]).

-export_type([openapi_datev_booking_preview/0]).

-type openapi_datev_booking_preview() ::
    #{ 'account_number' := binary(),
       'debit_credit' := binary(),
       'document_date' := binary(),
       'document_text' := binary(),
       'net_amount' := binary(),
       'opposite_account' := binary(),
       'tax_amount' => binary(),
       'tax_rate' => binary()
     }.

encode(#{ 'account_number' := AccountNumber,
          'debit_credit' := DebitCredit,
          'document_date' := DocumentDate,
          'document_text' := DocumentText,
          'net_amount' := NetAmount,
          'opposite_account' := OppositeAccount,
          'tax_amount' := TaxAmount,
          'tax_rate' := TaxRate
        }) ->
    #{ 'account_number' => AccountNumber,
       'debit_credit' => DebitCredit,
       'document_date' => DocumentDate,
       'document_text' => DocumentText,
       'net_amount' => NetAmount,
       'opposite_account' => OppositeAccount,
       'tax_amount' => TaxAmount,
       'tax_rate' => TaxRate
     }.
