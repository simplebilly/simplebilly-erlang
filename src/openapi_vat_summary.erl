-module(openapi_vat_summary).

-export([encode/1]).

-export_type([openapi_vat_summary/0]).

-type openapi_vat_summary() ::
    #{ 'input_tax_items' := list(),
       'output_tax_items' := list(),
       'total_input_tax' := binary(),
       'total_output_tax' := binary(),
       'vat_due' := binary()
     }.

encode(#{ 'input_tax_items' := InputTaxItems,
          'output_tax_items' := OutputTaxItems,
          'total_input_tax' := TotalInputTax,
          'total_output_tax' := TotalOutputTax,
          'vat_due' := VatDue
        }) ->
    #{ 'input_tax_items' => InputTaxItems,
       'output_tax_items' => OutputTaxItems,
       'total_input_tax' => TotalInputTax,
       'total_output_tax' => TotalOutputTax,
       'vat_due' => VatDue
     }.
