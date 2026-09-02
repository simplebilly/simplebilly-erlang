-module(openapi_service_job_update).

-export([encode/1]).

-export_type([openapi_service_job_update/0]).

-type openapi_service_job_update() ::
    #{ 'address' => binary(),
       'customerEmail' => binary(),
       'customerId' => openapi_u_uid:openapi_u_uid(),
       'customerName' => binary(),
       'customerPhone' => binary(),
       'description' => binary(),
       'estimatedDurationMinutes' => integer(),
       'lat' => float(),
       'lng' => float(),
       'notes' => binary(),
       'status' => openapi_service_job_status:openapi_service_job_status()
     }.

encode(#{ 'address' := Address,
          'customerEmail' := CustomerEmail,
          'customerId' := CustomerId,
          'customerName' := CustomerName,
          'customerPhone' := CustomerPhone,
          'description' := Description,
          'estimatedDurationMinutes' := EstimatedDurationMinutes,
          'lat' := Lat,
          'lng' := Lng,
          'notes' := Notes,
          'status' := Status
        }) ->
    #{ 'address' => Address,
       'customerEmail' => CustomerEmail,
       'customerId' => CustomerId,
       'customerName' => CustomerName,
       'customerPhone' => CustomerPhone,
       'description' => Description,
       'estimatedDurationMinutes' => EstimatedDurationMinutes,
       'lat' => Lat,
       'lng' => Lng,
       'notes' => Notes,
       'status' => Status
     }.
