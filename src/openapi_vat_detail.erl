-module(openapi_vat_detail).

-export([encode/1]).

-export_type([openapi_vat_detail/0]).

-type openapi_vat_detail() ::
    #{ 'count' := integer(),
       'net_amount' := binary(),
       'tax_amount' := binary(),
       'tax_rate' := binary()
     }.

encode(#{ 'count' := Count,
          'net_amount' := NetAmount,
          'tax_amount' := TaxAmount,
          'tax_rate' := TaxRate
        }) ->
    #{ 'count' => Count,
       'net_amount' => NetAmount,
       'tax_amount' => TaxAmount,
       'tax_rate' => TaxRate
     }.
