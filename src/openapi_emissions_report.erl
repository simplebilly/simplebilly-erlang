-module(openapi_emissions_report).

-export([encode/1]).

-export_type([openapi_emissions_report/0]).

-type openapi_emissions_report() ::
    #{ 'by_category' := list(),
       'by_scope' := list(),
       'by_year' := list(),
       'data_quality' := openapi_data_quality:openapi_data_quality(),
       'intensity_per_employee' => float(),
       'intensity_per_revenue_mio' => float(),
       'net_revenue' => float(),
       'spend_based_estimate_tco2e' => float(),
       'targets' := list(),
       'total_tco2e' := binary()
     }.

encode(#{ 'by_category' := ByCategory,
          'by_scope' := ByScope,
          'by_year' := ByYear,
          'data_quality' := DataQuality,
          'intensity_per_employee' := IntensityPerEmployee,
          'intensity_per_revenue_mio' := IntensityPerRevenueMio,
          'net_revenue' := NetRevenue,
          'spend_based_estimate_tco2e' := SpendBasedEstimateTco2e,
          'targets' := Targets,
          'total_tco2e' := TotalTco2e
        }) ->
    #{ 'by_category' => ByCategory,
       'by_scope' => ByScope,
       'by_year' => ByYear,
       'data_quality' => DataQuality,
       'intensity_per_employee' => IntensityPerEmployee,
       'intensity_per_revenue_mio' => IntensityPerRevenueMio,
       'net_revenue' => NetRevenue,
       'spend_based_estimate_tco2e' => SpendBasedEstimateTco2e,
       'targets' => Targets,
       'total_tco2e' => TotalTco2e
     }.
