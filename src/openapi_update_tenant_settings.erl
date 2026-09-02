-module(openapi_update_tenant_settings).

-export([encode/1]).

-export_type([openapi_update_tenant_settings/0]).

-type openapi_update_tenant_settings() ::
    #{ 'companyType' := openapi_company_type:openapi_company_type(),
       'features' => openapi_partial_feature_settings:openapi_partial_feature_settings()
     }.

encode(#{ 'companyType' := CompanyType,
          'features' := Features
        }) ->
    #{ 'companyType' => CompanyType,
       'features' => Features
     }.
