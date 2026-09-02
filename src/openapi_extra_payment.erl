-module(openapi_extra_payment).

-export([encode/1]).

-export_type([openapi_extra_payment/0]).

-type openapi_extra_payment() ::
    #{ 'amount' := binary(),
       'employee_id' := openapi_u_uid:openapi_u_uid(),
       'reason' => binary()
     }.

encode(#{ 'amount' := Amount,
          'employee_id' := EmployeeId,
          'reason' := Reason
        }) ->
    #{ 'amount' => Amount,
       'employee_id' => EmployeeId,
       'reason' => Reason
     }.
