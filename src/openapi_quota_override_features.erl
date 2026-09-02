-module(openapi_quota_override_features).

-export([encode/1]).

-export_type([openapi_quota_override_features/0]).

-type openapi_quota_override_features() ::
    #{ 'erp' => boolean(),
       'fancy_reports' => boolean(),
       'tax_automations' => boolean()
     }.

encode(#{ 'erp' := Erp,
          'fancy_reports' := FancyReports,
          'tax_automations' := TaxAutomations
        }) ->
    #{ 'erp' => Erp,
       'fancy_reports' => FancyReports,
       'tax_automations' => TaxAutomations
     }.
