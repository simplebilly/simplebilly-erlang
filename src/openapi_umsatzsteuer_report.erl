-module(openapi_umsatzsteuer_report).

-export([encode/1]).

-export_type([openapi_umsatzsteuer_report/0]).

-type openapi_umsatzsteuer_report() ::
    #{ 'generated_at' := binary(),
       'input_tax' := list(),
       'output_tax' := list(),
       'period' := binary(),
       'total_input_tax' := binary(),
       'total_output_tax' := binary(),
       'vat_payable' := binary(),
       'vat_refund' := binary()
     }.

encode(#{ 'generated_at' := GeneratedAt,
          'input_tax' := InputTax,
          'output_tax' := OutputTax,
          'period' := Period,
          'total_input_tax' := TotalInputTax,
          'total_output_tax' := TotalOutputTax,
          'vat_payable' := VatPayable,
          'vat_refund' := VatRefund
        }) ->
    #{ 'generated_at' => GeneratedAt,
       'input_tax' => InputTax,
       'output_tax' => OutputTax,
       'period' => Period,
       'total_input_tax' => TotalInputTax,
       'total_output_tax' => TotalOutputTax,
       'vat_payable' => VatPayable,
       'vat_refund' => VatRefund
     }.
