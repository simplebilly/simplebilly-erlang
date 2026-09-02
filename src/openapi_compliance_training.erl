-module(openapi_compliance_training).

-export([encode/1]).

-export_type([openapi_compliance_training/0]).

-type openapi_compliance_training() ::
    #{ 'assignable' => boolean(),
       'code' => binary(),
       'createdAt' => openapi_date_time:openapi_date_time(),
       'deletedAt' => openapi_date_time:openapi_date_time(),
       'description' => binary(),
       'id' => openapi_u_uid:openapi_u_uid(),
       'passScore' => integer(),
       'pluginPlatform' => binary(),
       'source' => openapi_training_source:openapi_training_source(),
       'tenantId' => openapi_u_uid:openapi_u_uid(),
       'title' => binary(),
       'updatedAt' => openapi_date_time:openapi_date_time(),
       'validityMonths' => integer()
     }.

encode(#{ 'assignable' := Assignable,
          'code' := Code,
          'createdAt' := CreatedAt,
          'deletedAt' := DeletedAt,
          'description' := Description,
          'id' := Id,
          'passScore' := PassScore,
          'pluginPlatform' := PluginPlatform,
          'source' := Source,
          'tenantId' := TenantId,
          'title' := Title,
          'updatedAt' := UpdatedAt,
          'validityMonths' := ValidityMonths
        }) ->
    #{ 'assignable' => Assignable,
       'code' => Code,
       'createdAt' => CreatedAt,
       'deletedAt' => DeletedAt,
       'description' => Description,
       'id' => Id,
       'passScore' => PassScore,
       'pluginPlatform' => PluginPlatform,
       'source' => Source,
       'tenantId' => TenantId,
       'title' => Title,
       'updatedAt' => UpdatedAt,
       'validityMonths' => ValidityMonths
     }.
