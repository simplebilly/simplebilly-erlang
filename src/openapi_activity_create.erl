-module(openapi_activity_create).

-export([encode/1]).

-export_type([openapi_activity_create/0]).

-type openapi_activity_create() ::
    #{ 'activityType' := openapi_activity_type:openapi_activity_type(),
       'assignedTo' => binary(),
       'contactId' => binary(),
       'description' => binary(),
       'dueDate' => calendar:date(),
       'reminderDate' => calendar:date(),
       'status' := openapi_activity_status:openapi_activity_status(),
       'subject' := binary()
     }.

encode(#{ 'activityType' := ActivityType,
          'assignedTo' := AssignedTo,
          'contactId' := ContactId,
          'description' := Description,
          'dueDate' := DueDate,
          'reminderDate' := ReminderDate,
          'status' := Status,
          'subject' := Subject
        }) ->
    #{ 'activityType' => ActivityType,
       'assignedTo' => AssignedTo,
       'contactId' => ContactId,
       'description' => Description,
       'dueDate' => DueDate,
       'reminderDate' => ReminderDate,
       'status' => Status,
       'subject' => Subject
     }.
