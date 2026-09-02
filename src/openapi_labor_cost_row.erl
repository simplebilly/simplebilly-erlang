-module(openapi_labor_cost_row).

-export([encode/1]).

-export_type([openapi_labor_cost_row/0]).

-type openapi_labor_cost_row() ::
    #{ 'cost' := binary(),
       'employeeId' => openapi_u_uid:openapi_u_uid(),
       'groupKey' := binary(),
       'hours' := binary(),
       'name' => binary()
     }.

encode(#{ 'cost' := Cost,
          'employeeId' := EmployeeId,
          'groupKey' := GroupKey,
          'hours' := Hours,
          'name' := Name
        }) ->
    #{ 'cost' => Cost,
       'employeeId' => EmployeeId,
       'groupKey' => GroupKey,
       'hours' => Hours,
       'name' => Name
     }.
