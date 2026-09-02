-module(openapi_vat_item).

-export([encode/1]).

-export_type([openapi_vat_item/0]).

-type openapi_vat_item() ::
    #{ 'net_amount' := binary(),
       'tax_amount' := binary(),
       'tax_rate' := binary()
     }.

encode(#{ 'net_amount' := NetAmount,
          'tax_amount' := TaxAmount,
          'tax_rate' := TaxRate
        }) ->
    #{ 'net_amount' => NetAmount,
       'tax_amount' => TaxAmount,
       'tax_rate' => TaxRate
     }.
