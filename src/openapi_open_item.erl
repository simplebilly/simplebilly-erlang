-module(openapi_open_item).

-export([encode/1]).

-export_type([openapi_open_item/0]).

-type openapi_open_item() ::
    #{ 'amount_due' := binary(),
       'amount_paid' := binary(),
       'customer_id' => binary(),
       'days_overdue' => integer(),
       'due_date' => binary(),
       'invoice_id' := binary(),
       'invoice_number' := binary(),
       'issue_date' := binary(),
       'open_amount' := binary(),
       'reminder_level' := openapi_reminder_level:openapi_reminder_level()
     }.

encode(#{ 'amount_due' := AmountDue,
          'amount_paid' := AmountPaid,
          'customer_id' := CustomerId,
          'days_overdue' := DaysOverdue,
          'due_date' := DueDate,
          'invoice_id' := InvoiceId,
          'invoice_number' := InvoiceNumber,
          'issue_date' := IssueDate,
          'open_amount' := OpenAmount,
          'reminder_level' := ReminderLevel
        }) ->
    #{ 'amount_due' => AmountDue,
       'amount_paid' => AmountPaid,
       'customer_id' => CustomerId,
       'days_overdue' => DaysOverdue,
       'due_date' => DueDate,
       'invoice_id' => InvoiceId,
       'invoice_number' => InvoiceNumber,
       'issue_date' => IssueDate,
       'open_amount' => OpenAmount,
       'reminder_level' => ReminderLevel
     }.
