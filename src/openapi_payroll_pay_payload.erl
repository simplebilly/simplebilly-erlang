-module(openapi_payroll_pay_payload).

-export([encode/1]).

-export_type([openapi_payroll_pay_payload/0]).

-type openapi_payroll_pay_payload() ::
    #{ 'payment_date' := calendar:date()
     }.

encode(#{ 'payment_date' := PaymentDate
        }) ->
    #{ 'payment_date' => PaymentDate
     }.
