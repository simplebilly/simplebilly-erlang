-module(openapi_tenant_settings).

-export([encode/1]).

-export_type([openapi_tenant_settings/0]).

-type openapi_tenant_settings() ::
    #{ 'companyType' := openapi_company_type:openapi_company_type(),
       'dpaAcceptedAt' => openapi_date_time:openapi_date_time(),
       'dpaAcceptedBy' => binary(),
       'dpaVersion' => binary(),
       'features' := openapi_any_type:openapi_any_type()
     }.

encode(#{ 'companyType' := CompanyType,
          'dpaAcceptedAt' := DpaAcceptedAt,
          'dpaAcceptedBy' := DpaAcceptedBy,
          'dpaVersion' := DpaVersion,
          'features' := Features
        }) ->
    #{ 'companyType' => CompanyType,
       'dpaAcceptedAt' => DpaAcceptedAt,
       'dpaAcceptedBy' => DpaAcceptedBy,
       'dpaVersion' => DpaVersion,
       'features' => Features
     }.
