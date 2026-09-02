-module(openapi_quota_override).

-export([encode/1]).

-export_type([openapi_quota_override/0]).

-type openapi_quota_override() ::
    #{ 'features' => openapi_quota_override_features:openapi_quota_override_features(),
       'max_connectors' => integer(),
       'max_invoices_per_month' => integer(),
       'max_users' => integer(),
       'metered' => maps:map(),
       'plan' => binary()
     }.

encode(#{ 'features' := Features,
          'max_connectors' := MaxConnectors,
          'max_invoices_per_month' := MaxInvoicesPerMonth,
          'max_users' := MaxUsers,
          'metered' := Metered,
          'plan' := Plan
        }) ->
    #{ 'features' => Features,
       'max_connectors' => MaxConnectors,
       'max_invoices_per_month' => MaxInvoicesPerMonth,
       'max_users' => MaxUsers,
       'metered' => Metered,
       'plan' => Plan
     }.
