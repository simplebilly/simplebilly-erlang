-module(openapi_konzern_beteiligung).

-export([encode/1]).

-export_type([openapi_konzern_beteiligung/0]).

-type openapi_konzern_beteiligung() ::
    #{ 'company_name' := binary(),
       'control_basis' := list(),
       'controlled' := boolean(),
       'ownership_pct' := binary()
     }.

encode(#{ 'company_name' := CompanyName,
          'control_basis' := ControlBasis,
          'controlled' := Controlled,
          'ownership_pct' := OwnershipPct
        }) ->
    #{ 'company_name' => CompanyName,
       'control_basis' => ControlBasis,
       'controlled' => Controlled,
       'ownership_pct' => OwnershipPct
     }.
