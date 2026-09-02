-module(openapi_payroll_autopay_payload).

-export([encode/1]).

-export_type([openapi_payroll_autopay_payload/0]).

-type openapi_payroll_autopay_payload() ::
    #{ 'debtor_bic' => binary(),
       'debtor_iban' => binary(),
       'debtor_name' => binary(),
       'execution_date' => calendar:date()
     }.

encode(#{ 'debtor_bic' := DebtorBic,
          'debtor_iban' := DebtorIban,
          'debtor_name' := DebtorName,
          'execution_date' := ExecutionDate
        }) ->
    #{ 'debtor_bic' => DebtorBic,
       'debtor_iban' => DebtorIban,
       'debtor_name' => DebtorName,
       'execution_date' => ExecutionDate
     }.
