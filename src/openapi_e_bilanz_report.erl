-module(openapi_e_bilanz_report).

-export([encode/1]).

-export_type([openapi_e_bilanz_report/0]).

-type openapi_e_bilanz_report() ::
    #{ 'account_overview' := list(),
       'balance_sheet' := openapi_balance_sheet:openapi_balance_sheet(),
       'generated_at' := binary(),
       'income_statement' := openapi_income_statement:openapi_income_statement(),
       'period' := binary(),
       'vat_summary' := openapi_vat_summary:openapi_vat_summary()
     }.

encode(#{ 'account_overview' := AccountOverview,
          'balance_sheet' := BalanceSheet,
          'generated_at' := GeneratedAt,
          'income_statement' := IncomeStatement,
          'period' := Period,
          'vat_summary' := VatSummary
        }) ->
    #{ 'account_overview' => AccountOverview,
       'balance_sheet' => BalanceSheet,
       'generated_at' => GeneratedAt,
       'income_statement' => IncomeStatement,
       'period' => Period,
       'vat_summary' => VatSummary
     }.
