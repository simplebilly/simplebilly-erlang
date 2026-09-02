-module(openapi_lead_update).

-export([encode/1]).

-export_type([openapi_lead_update/0]).

-type openapi_lead_update() ::
    #{ 'company' => binary(),
       'convertedAt' => openapi_date_time:openapi_date_time(),
       'createdAt' => openapi_date_time:openapi_date_time(),
       'email' => binary(),
       'firstContactAt' => openapi_date_time:openapi_date_time(),
       'name' => binary(),
       'notes' => binary(),
       'phone' => binary(),
       'score' => integer(),
       'source' => binary(),
       'status' => openapi_lead_status:openapi_lead_status(),
       'tags' => openapi_any_type:openapi_any_type(),
       'tenantId' => openapi_u_uid:openapi_u_uid(),
       'updatedAt' => openapi_date_time:openapi_date_time()
     }.

encode(#{ 'company' := Company,
          'convertedAt' := ConvertedAt,
          'createdAt' := CreatedAt,
          'email' := Email,
          'firstContactAt' := FirstContactAt,
          'name' := Name,
          'notes' := Notes,
          'phone' := Phone,
          'score' := Score,
          'source' := Source,
          'status' := Status,
          'tags' := Tags,
          'tenantId' := TenantId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'company' => Company,
       'convertedAt' => ConvertedAt,
       'createdAt' => CreatedAt,
       'email' => Email,
       'firstContactAt' => FirstContactAt,
       'name' => Name,
       'notes' => Notes,
       'phone' => Phone,
       'score' => Score,
       'source' => Source,
       'status' => Status,
       'tags' => Tags,
       'tenantId' => TenantId,
       'updatedAt' => UpdatedAt
     }.
