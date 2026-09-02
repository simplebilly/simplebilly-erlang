-module(openapi_plausibility_check).

-export([encode/1]).

-export_type([openapi_plausibility_check/0]).

-type openapi_plausibility_check() ::
    #{ 'detail' := binary(),
       'id' := binary(),
       'name' := binary(),
       'severity' := openapi_severity:openapi_severity(),
       'status' := openapi_check_status:openapi_check_status()
     }.

encode(#{ 'detail' := Detail,
          'id' := Id,
          'name' := Name,
          'severity' := Severity,
          'status' := Status
        }) ->
    #{ 'detail' => Detail,
       'id' => Id,
       'name' => Name,
       'severity' => Severity,
       'status' => Status
     }.
