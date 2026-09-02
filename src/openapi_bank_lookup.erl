-module(openapi_bank_lookup).

-export([encode/1]).

-export_type([openapi_bank_lookup/0]).

-type openapi_bank_lookup() ::
    #{ 'bank_name' => binary(),
       'bic' => binary(),
       'iban' := binary(),
       'nextgenpsd2_url' => binary(),
       'psd2_supported' := boolean()
     }.

encode(#{ 'bank_name' := BankName,
          'bic' := Bic,
          'iban' := Iban,
          'nextgenpsd2_url' := Nextgenpsd2Url,
          'psd2_supported' := Psd2Supported
        }) ->
    #{ 'bank_name' => BankName,
       'bic' => Bic,
       'iban' => Iban,
       'nextgenpsd2_url' => Nextgenpsd2Url,
       'psd2_supported' => Psd2Supported
     }.
