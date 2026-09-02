-module(openapi_bwa_summary).

-export([encode/1]).

-export_type([openapi_bwa_summary/0]).

-type openapi_bwa_summary() ::
    #{ 'gross_profit' := binary(),
       'net_profit' := binary(),
       'open_invoices_count' := integer(),
       'open_invoices_total' := binary(),
       'overdue_invoices_count' := integer(),
       'overdue_invoices_total' := binary(),
       'profit_margin' := float()
     }.

encode(#{ 'gross_profit' := GrossProfit,
          'net_profit' := NetProfit,
          'open_invoices_count' := OpenInvoicesCount,
          'open_invoices_total' := OpenInvoicesTotal,
          'overdue_invoices_count' := OverdueInvoicesCount,
          'overdue_invoices_total' := OverdueInvoicesTotal,
          'profit_margin' := ProfitMargin
        }) ->
    #{ 'gross_profit' => GrossProfit,
       'net_profit' => NetProfit,
       'open_invoices_count' => OpenInvoicesCount,
       'open_invoices_total' => OpenInvoicesTotal,
       'overdue_invoices_count' => OverdueInvoicesCount,
       'overdue_invoices_total' => OverdueInvoicesTotal,
       'profit_margin' => ProfitMargin
     }.
