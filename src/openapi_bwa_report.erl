-module(openapi_bwa_report).

-export([encode/1]).

-export_type([openapi_bwa_report/0]).

-type openapi_bwa_report() ::
    #{ 'expenses' := openapi_b_wa_expenses:openapi_b_wa_expenses(),
       'generated_at' := binary(),
       'period' := binary(),
       'revenue' := openapi_b_wa_revenue:openapi_b_wa_revenue(),
       'summary' := openapi_b_wa_summary:openapi_b_wa_summary()
     }.

encode(#{ 'expenses' := Expenses,
          'generated_at' := GeneratedAt,
          'period' := Period,
          'revenue' := Revenue,
          'summary' := Summary
        }) ->
    #{ 'expenses' => Expenses,
       'generated_at' => GeneratedAt,
       'period' => Period,
       'revenue' => Revenue,
       'summary' => Summary
     }.
