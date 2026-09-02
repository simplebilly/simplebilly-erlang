-module(openapi_plan_features).

-export([encode/1]).

-export_type([openapi_plan_features/0]).

-type openapi_plan_features() ::
    #{ 'connectors' := boolean(),
       'erp' := boolean(),
       'fancyReports' := boolean(),
       'taxAutomations' := boolean()
     }.

encode(#{ 'connectors' := Connectors,
          'erp' := Erp,
          'fancyReports' := FancyReports,
          'taxAutomations' := TaxAutomations
        }) ->
    #{ 'connectors' => Connectors,
       'erp' => Erp,
       'fancyReports' => FancyReports,
       'taxAutomations' => TaxAutomations
     }.
